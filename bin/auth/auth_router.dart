import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../common/dto/response_dto.dart';
import 'auth_service.dart';
import 'model/auth_model.dart';

class AuthRouter {
  AuthService authService;

  AuthRouter(this.authService);

  Handler get router {
    Router router = Router();

    router.post("/signup", (Request req) async {
      final Map<String, dynamic> param = json.decode(await req.readAsString());
      print(param.toString());

      final authModel = AuthModel.fromJson(param);

      if (authModel.email == null) {
        return Response(
          422,
          body: ResponseDto(msg: "이메일 정보가 필요합니다.").toJson(),
        );
      }

      if (authModel.password == null) {
        return Response(
          422,
          body: ResponseDto(msg: "비밀번호 정보가 필요합니다.").toJson(),
        );
      }

      try {
        final id = await authService.signUp(authModel);
        return Response(201,
            body: json
                .encode(ResponseDto(status: "ok", msg: "등록성공 $id").toJson()));
      } catch (e) {
        return Response(400,
            body: json.encode(
                ResponseDto(status: "fail", msg: "${e.toString()}").toJson()));
      }
    });

    router.post("/signin", (Request req) async {
      final Map<String, dynamic> param = json.decode(await req.readAsString());
      print(param.toString());
      final authModel = AuthModel.fromJson(param);

      if (authModel.email == null) {
        return Response(
          422,
          body: ResponseDto(status: "fail", msg: "이메일 정보가 필요합니다.").toJson(),
        );
      }

      if (authModel.password == null) {
        return Response(
          422,
          body: ResponseDto(status: "fail", msg: "비밀번호 정보가 필요합니다.").toJson(),
        );
      }

      final result = await authService.signIn(authModel);
      if (result == null) {
        return Response(
          204,
          body: json.encode(
            ResponseDto(status: "fail", msg: "등록된 정보가 없습니다.").toJson(),
          ),
        );
      }

      return Response(
        200,
        body: json.encode(
          ResponseDto(
            status: "ok",
            msg: "등록된 정보 검색 성공",
            body: jsonEncode(
              result.toJson(),
            ),
          ).toJson(),
        ),
      );
    });

    router.post("/restpassword", (Request req) async {
      final Map<String, dynamic> param = json.decode(await req.readAsString());
      print(param.toString());
    });

    router.get("/checkauth", (Request req) async {
      final Map<String, dynamic> param = json.decode(await req.readAsString());
      print(param.toString());

      final authModel = AuthModel.fromJson(param);

      if (authModel.email == null) {
        return Response(
          422,
          body: ResponseDto(msg: "이메일 정보가 필요합니다.").toJson(),
        );
      }

      final result = await authService.checkEmail(authModel);
      if (result == null) {
        return Response(200,
            body: json.encode(
                ResponseDto(status: "ok", msg: "등록된 정보가 없습니다.").toJson()));
      }

      return Response(200,
          body: json.encode(ResponseDto(status: "fail", msg: "중복").toJson()));
    });

    // router.all("/<name|.*>", (Request req) {
    //   return Response.notFound(
    //       json.encode({
    //         "msg": "Wrong! path is not currect < ${req.url} >",
    //         "code": "404"
    //       }),
    //       headers: {"Content-Type": "application/json"});
    // });
    return router;
  }
}
