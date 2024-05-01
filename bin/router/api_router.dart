import 'package:shelf/shelf.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_router/shelf_router.dart';

import '../auth/auth_router.dart';
import '../category/category_router.dart';
import '../home/home_router.dart';
import '../project/project_router.dart';

class ApiRouter {
  final AuthRouter authRouter;
  final HomeRouter homeRouter;
  final CategoryRouter categoryRouter;
  final ProjectRouter projectRouter;

  ApiRouter({
    required this.authRouter,
    required this.homeRouter,
    required this.categoryRouter,
    required this.projectRouter,
  });

  Handler get router {
    final router = Router();
    final prefix = '/api/v1';

    router.mount(prefix, authRouter.router);
    router.mount(prefix, homeRouter.router);
    router.mount(prefix, categoryRouter.router);
    router.mount(prefix, projectRouter.router);

    // router.mount(prefix, articlesRouter.router);

    return Pipeline()
        .addMiddleware(corsHeaders())
        .addMiddleware(jsonContentTypeResponse())
        .addHandler(router);
  }

  Middleware jsonContentTypeResponse() => (innerHandler) {
        return (request) async {
          final response = await innerHandler(request);

          final contentTypeJson = {
            'content-type': 'application/json; charset=utf-8'
          };

          return response
              .change(headers: {...response.headersAll, ...contentTypeJson});
        };
      };
}
