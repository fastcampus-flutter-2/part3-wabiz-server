import 'package:sqlite3/sqlite3.dart';

import 'model/auth_model.dart';

class AuthService {
  final Database db;

  AuthService(this.db);

  Future<int?> signUp(AuthModel authModel) async {
    db.execute(
        """INSERT INTO users (email, password, username, registration_date) VALUES ('${authModel.email}', '${authModel.password}', '${authModel.username}', DATETIME('now'));""");

    return db.lastInsertRowId;
  }

  Future<AuthModel?> signIn(AuthModel authModel) async {
    List<Map> result = db.select(
        "SELECT * FROM users WHERE email = '${authModel.email}' AND password = '${authModel.password}';");
    if (result.isEmpty) {
      return null;
    } else {
      return AuthModel.fromJson(result.first as Map<String, dynamic>);
    }
  }

  Future<AuthModel?> checkEmail(AuthModel authModel) async {
    List<Map> result =
        db.select("SELECT * FROM users WHERE email = '${authModel.email}';");
    if (result.isEmpty) {
      return null;
    } else {
      return AuthModel.fromJson(result.first as Map<String, dynamic>);
    }
  }
}
