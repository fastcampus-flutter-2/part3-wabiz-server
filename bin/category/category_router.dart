import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'category_service.dart';
import 'model/category_dto.dart';

class CategoryRouter {
  CategoryService categoryService;

  CategoryRouter(this.categoryService);

  Future<Response> _getCategories(Request request) async {
    print("_getCategories");
    categoryService.getAllProjects();
    return Response.ok("");
  }

  Future<Response> _getProjectsByCategoryId(Request request) async {
    print("_getProjects");
    final categoryId = request.params['category_id'];
    if (categoryId == null) {
      return Response(422, body: jsonEncode('categoryId is required'));
    }

    final result = await categoryService.getProjectsByCategoryId(categoryId);

    return Response.ok(
      jsonEncode(
        CategoryDto(
          status: "ok",
          totalCount: result?.length ?? 0,
          projects: result,
        ).toJson(),
      ),
    );
  }

  Future<Response> _getProjectsByProjectType(Request request) async {
    print("_getProjectsByProjectType");

    final categoryId = request.params['category_id'];
    final projectTypeId = request.params['project_type_id'];

    final result = await categoryService.getProjectsByProjectTypeId(
        categoryId ?? "1", projectTypeId ?? "1");

    return Response.ok(jsonEncode(CategoryDto(
      status: "ok",
      totalCount: result?.length ?? 0,
      projects: result,
    ).toJson()));
  }

  Handler get router {
    final router = Router();
    router.get("/category", _getCategories);
    router.get("/category/<category_id>", _getProjectsByCategoryId);
    router.get(
        "/category/<category_id>/<project_type_id>", _getProjectsByProjectType);
    return router;
  }
}
