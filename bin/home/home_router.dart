import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../server.dart';
import 'home_service.dart';
import 'model/home_dto.dart';

class HomeRouter {
  HomeService homeService;

  HomeRouter(this.homeService);

  Future<Response> _getProjects(Request request) async {
    log.info("_getProjects()");
    final items = await homeService.getProjects();
    return Response.ok(jsonEncode(HomeDto(
      status: "ok",
      totalCount: items?.length ?? 0,
      projects: items,
    ).toJson()));
  }

  Handler get router {
    final router = Router();

    router.get("/home", _getProjects);
    return router;
  }
}
