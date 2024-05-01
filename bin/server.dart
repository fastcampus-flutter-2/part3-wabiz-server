import 'dart:io';

import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:sqlite3/sqlite3.dart';

import 'auth/auth_router.dart';
import 'auth/auth_service.dart';
import 'category/category_router.dart';
import 'category/category_service.dart';
import 'common/db/db_service.dart';
import 'home/home_router.dart';
import 'home/home_service.dart';
import 'project/project_router.dart';
import 'project/project_service.dart';
import 'router/api_router.dart';

final log = Logger('Wabiz-Server');

void main(List<String> args) async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  final db = sqlite3.open("wabiz.db");

  DbService dbService = DbService(db);
  Directory current = Directory.current;

  final file = File(join(current.path, "wabiz.db"));
  if (!(await file.exists())) {
    dbService.dropTables();
    dbService.initTables();
    dbService.insertDummyDatas();
  }

  final ip = InternetAddress.anyIPv4;
  AuthService authService = AuthService(db);
  HomeService homeService = HomeService(db);
  CategoryService categoryService = CategoryService(db);
  ProjectService projectService = ProjectService(db);

  final apiRouter = ApiRouter(
    authRouter: AuthRouter(authService),
    homeRouter: HomeRouter(homeService),
    categoryRouter: CategoryRouter(categoryService),
    projectRouter: ProjectRouter(projectService),
  ).router;

  final handler = Pipeline()
      .addMiddleware(
        logRequests(),
      )
      .addHandler(
        apiRouter.call,
      );

  final port = int.parse(Platform.environment['PORT'] ?? '3000');
  final server = await serve(handler, ip, port);
  log.info('Server listening on port ${server.port}');
}
