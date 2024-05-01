import 'dart:ffi';
import 'dart:io';

import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:sqlite3/open.dart';
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

DynamicLibrary _openOnLinux() {
  final scriptDir = File(Platform.script.toFilePath()).parent;
  final libraryNextToScript = File(join(scriptDir.path, 'libsqlite3.so'));
  return DynamicLibrary.open(libraryNextToScript.path);
}

void main(List<String> args) async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  if (Platform.isLinux) {
    open.overrideFor(OperatingSystem.linux, _openOnLinux);
  }
  Database? db;
  if (Platform.isLinux) {
    log.info("Platform.isLinux");
    db = sqlite3.openInMemory();
  } else {
    db = sqlite3.open("wabiz.db");
  }

  DbService dbService = DbService(db);
  Directory current = Directory.current;
  print(current.path);
  if (Platform.isLinux) {
    dbService.dropTables();
    dbService.initTables();
    dbService.insertDummyDatas();
  } else {
    final file = File(join(current.path, "wabiz.db"));
    if (!(await file.exists())) {
      dbService.dropTables();
      dbService.initTables();
      dbService.insertDummyDatas();
    }
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
      .addMiddleware(corsHeaders())
      .addMiddleware(
        logRequests(),
      )
      .addHandler(
        apiRouter.call,
      );

  // final port = int.parse(Platform.environment['PORT'] ?? '3000');
  String portNum = "8080";
  if(!Platform.isLinux){
    portNum = "3000";
  }
  final port = int.parse(portNum);
  final server = await serve(handler, ip, port);
  log.info('Server listening on port ${server.port}');
}
