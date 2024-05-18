import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../common/dto/response_dto.dart';
import '../server.dart';
import 'model/project_dto.dart';
import 'model/project_model.dart';
import 'model/project_type_dto.dart';
import 'model/reward_model.dart';
import 'project_service.dart';

class ProjectRouter {
  ProjectService projectService;

  ProjectRouter(this.projectService);

  /// 프로젝트 타입 가져오기
  Future<Response> _getProjectType(Request request) async {
    print("_getProjectType");
    final result = await projectService.getProjectType();
    return Response.ok(jsonEncode(ProjectTypeDto(data: result).toJson()));
  }

  /// 사용자 아이디 기반 프로젝트 가져오기
  Future<Response> _getProjectByUserId(Request request) async {
    print("_getProjectByUserId");
    final userId = request.params['userId'];
    final result = await projectService.getProjectByUserId(userId);
    return Response.ok(jsonEncode(ProjectDto(data: result).toJson()));
  }

  /// 프로젝트 생성하기
  Future<Response> _createProject(Request request) async {
    print("_createProject");

    final requestBody = await request.readAsString();
    final body = ProjectItemModel.fromJson(json.decode(requestBody));
    log.info("body: $body");

    final id = await projectService.createProject(body);

    return Response(
      201,
      body: jsonEncode(
        ResponseDto(
            status: "ok",
            msg: "created",
            body: json.encode(
              ProjectItemModel(
                id: id,
              ).toJson(),
            )).toJson(),
      ),
    );
  }

  /// 리워드 생성하기
  /// 프로젝트 아이디를 path로 받기
  Future<Response> _addProjectReward(Request request) async {
    print("_addProjectReward");
    final projectId = request.params['id'];
    final requestBody = await request.readAsString();
    final body = RewardItemModel.fromJson(json.decode(requestBody));
    log.info("body: $body");
    final id = await projectService.createProjectReward(body, projectId ?? "");
    return Response(
      201,
      body: jsonEncode(
        ResponseDto(status: "ok", msg: "created", body: "").toJson(),
      ),
    );
  }

  Future<Response> _updateProjectOpenState(Request request) async {
    print("_updateProjectOpenState");
    final projectId = request.params['id'];
    final requestBody = await request.readAsString();
    final body = ProjectItemModel.fromJson(json.decode(requestBody));
    log.info("body: $body");
    final id =
        await projectService.updateProjectOpenState(body, projectId ?? "");
    return Response(
      200,
      body: jsonEncode(
        ResponseDto(status: "ok", msg: "updated", body: "").toJson(),
      ),
    );
  }

  Future<Response> _deleteProject(Request request) async {
    print("_updateProjectOpenState");
    final projectId = request.params['id'];

    final id = await projectService.deleteProject(projectId ?? "");
    return Response(
      200,
      body: jsonEncode(
        ResponseDto(status: "ok", msg: "removed", body: "").toJson(),
      ),
    );
  }

  Future<Response> _getProjectByProjectId(Request request) async {
    final projectId = request.params['id'];

    final result = await projectService.getProjectByProjectId(projectId ?? "");
    return Response.ok(jsonEncode(ProjectDto(data: result).toJson()));
  }

  /// 프로젝트 이미지 등록하기

  Handler get router {
    final router = Router();
    router.get("/project/type", _getProjectType);
    router.get("/project/<id>", _getProjectByProjectId);
    router.post("/project", _createProject);
    router.put("/project/<id>", _updateProjectOpenState);
    router.delete("/project/<id>", _deleteProject);
    router.get("/project/user/<userId>", _getProjectByUserId);
    router.post("/project/reward/<id>", _addProjectReward);
    return router;
  }
}
