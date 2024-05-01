import 'package:sqlite3/sqlite3.dart';

import '../server.dart';
import 'model/category_model.dart';

class CategoryService {
  final Database db;

  CategoryService(this.db);

  Future<List<CategoryItemModel>?> getAllProjects() async {
    final ResultSet resultSet = db.select("""
          SELECT
            project.*,
            COUNT(waitlist.user_id) AS waitlist_count,
            SUM(fund.user_id) AS total_backers,
            SUM(fund.price) AS total_funded,
            categories.category,
            project_type.type
          FROM project
          LEFT JOIN waitlist ON project.id = waitlist.project_id
          LEFT JOIN fund ON project.id = fund.project_id
          LEFT JOIN categories ON project.category_id = categories.id
          LEFT JOIN project_type ON project.project_type_id = project_type.id
          GROUP BY project.id
          LIMIT 0, 15;
          """);

    List<CategoryItemModel> result = [];
    for (final Row row in resultSet) {
      log.info(row.toString());
      result.add(CategoryItemModel.fromJson(row));
    }
    return result;
  }

  /// 전체 카테고리 목록
  Future<List<CategoryItemModel>?> getProjectsByCategoryId(
      String categoryId) async {
    final ResultSet resultSet = db.select("""
          SELECT
            project.*,
            COUNT(waitlist.user_id) AS waitlist_count,
            COUNT(fund.user_id) AS total_backers,
            SUM(fund.price) AS total_funded,
            categories.category,
            project_type.type,
            project_image.image
          FROM project
          LEFT JOIN waitlist ON project.id = waitlist.project_id
          LEFT JOIN fund ON project.id = fund.project_id
          LEFT JOIN categories ON project.category_id = categories.id
          LEFT JOIN project_type ON project.project_type_id = project_type.id
          LEFT JOIN project_image ON project.id = project_image.project_id
          WHERE project.category_id == $categoryId
          GROUP BY project.id
          HAVING total_backers >= 1000 AND total_funded >= (project.price * 1000)
          LIMIT 0, 5;
          """);

    List<CategoryItemModel> result = [];
    for (final Row row in resultSet) {
      log.info(row.toString());
      result.add(CategoryItemModel.fromJson(row));
    }
    return result;
  }

  /// 카테고리 --> 프로젝트 타입
  Future<List<CategoryItemModel>?> getProjectsByProjectTypeId(
      String categoryId, String projectTypeId) async {
    var sql = """
          SELECT
            project.*,
            COUNT(waitlist.user_id) AS waitlist_count,
            COUNT(fund.user_id) AS total_funded_count,
            SUM(fund.price) AS total_funded,
            categories.category,
            project_type.type,
            project_image.image
          FROM project
          LEFT JOIN waitlist ON project.id = waitlist.project_id
          LEFT JOIN fund ON project.id = fund.project_id
          LEFT JOIN categories ON project.category_id = categories.id
          LEFT JOIN project_type ON project.project_type_id = project_type.id
          LEFT JOIN project_image ON project.id = project_image.project_id
          """;
    var subSql = "";
    print("projectTypeId: ${projectTypeId}");

    if (projectTypeId == "best") {
      subSql = """
       WHERE project.category_id == $categoryId
          GROUP BY project.id
          HAVING total_funded_count >= 500 AND total_funded >= (project.price * 500)
      """;
    } else if (projectTypeId == "all") {
      subSql = """ WHERE project.category_id == $categoryId 
          GROUP BY project.id
          HAVING total_funded_count >= 0 AND total_funded >= 0
          """;
    } else {
      subSql =
          """ WHERE project.category_id == $categoryId AND project.project_type_id == $projectTypeId
          GROUP BY project.id
          HAVING total_funded_count >= 0 AND total_funded >= 0
          """;
    }

    sql += subSql;
    sql += " LIMIT 0, 25;";

    // print(sql);

    /// 전체랑 베스트펀딩은 어떻게 하나?
    final ResultSet resultSet = db.select(sql);

    List<CategoryItemModel> result = [];

    for (final Row row in resultSet) {
      log.info(row.toString());
      result.add(CategoryItemModel.fromJson(row));
    }
    return result;
  }

  Future<List<CategoryItemModel>?> getBestProjects(
      String categoryId, String projectTypeId) async {
    final ResultSet resultSet = db.select("""
          SELECT
            project.*,
            COUNT(waitlist.user_id) AS waitlist_count,
            SUM(fund.user_id) AS total_backers,
            SUM(fund.price) AS total_funded,
            categories.category,
            project_type.type
          FROM project
          LEFT JOIN waitlist ON project.id = waitlist.project_id
          LEFT JOIN fund ON project.id = fund.project_id
          LEFT JOIN categories ON project.category_id = categories.id
          LEFT JOIN project_type ON project.project_type_id = project_type.id
          WHERE project.category_id == $categoryId
          GROUP BY project.id
          HAVING total_backers >= 1000 AND total_funded >= (project.price * 1000)
          LIMIT 0, 15;
          """);

    List<CategoryItemModel> result = [];
    for (final Row row in resultSet) {
      log.info(row.toString());
      result.add(CategoryItemModel.fromJson(row));
    }
    return result;
  }
}
