import 'dart:typed_data';

import 'package:sqlite3/sqlite3.dart';

import '../common/model/project_type.dart';
import 'model/project_model.dart';
import 'model/reward_model.dart';

class ProjectService {
  final Database db;

  ProjectService(this.db);

  /// 프로젝트 타입 가져오기
  Future<List<ProjectType>> getProjectType() async {
    final ResultSet resultSet = db.select("""
          SELECT
            *
          FROM project_type
          """);

    List<ProjectType> result = [];
    for (final Row row in resultSet) {
      print(row.toString());
      result.add(ProjectType.fromJson(row));
    }
    return result;
  }

  Future<List<ProjectItemModel>> getProjectByProjectId(
      String? projectId) async {
    final ResultSet resultSet = db.select("""
          SELECT
            project.*,
            COUNT(waitlist.user_id) AS waitlist_count,
            SUM(fund.user_id) AS total_funded_count,
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
          WHERE project.id == $projectId;
           GROUP BY project.id
          """);
    List<ProjectItemModel> result = [];
    for (final Row row in resultSet) {
      print(row.toString());
      result.add(ProjectItemModel.fromJson(row));
    }
    return result;
  }

  /// 사용자 아이디 기반 프로젝트 가져오기
  Future<List<ProjectItemModel>> getProjectByUserId(String? userId) async {
    final ResultSet resultSet = db.select("""
         SELECT   
            project.*,
            categories.category,
            project_type.type
          
          FROM project
          LEFT JOIN categories ON project.category_id = categories.id
          LEFT JOIN project_type ON project.project_type_id = project_type.id
          WHERE project.user_id == $userId
          """);

    List<ProjectItemModel> result = [];
    for (final Row row in resultSet) {
      print(row.toString());
      result.add(ProjectItemModel.fromJson(row));
    }
    return result;
  }

  Future<int> createProject(ProjectItemModel body) async {
    db.execute("""
    INSERT INTO project (
        category_id,
        project_type_id,
        project_class,
        user_id,
        title,
        owner,
        price,
        thumbnail,
        deadline,
        description,
        is_open,
        created
    ) VALUES (
        ${body.categoryId},
        ${body.projectTypeId},
        '${body.projectClass}',
        '${body.userId}',
        '${body.title}',
        '${body.owner}',
         ${body.price},
        '${body.thumbnail}',
        '${body.deadline}',
        '${body.description}',
        'close',
        DATETIME('now')
    ); 
    """);

    final lastPrjId = db.select("""
     SELECT * from project
    ORDER BY
    id DESC
    limit 1
    """);

    int projectId = 0;
    if (lastPrjId.isNotEmpty) {
      projectId = lastPrjId.first["id"] as int;
    }
    print(projectId);
    db.execute("""
    INSERT INTO project_image (
        project_id,
        image,
        created
    ) VALUES (
        $projectId,
        '${Uint8List.fromList(body.projectImage ?? [])}',
        DATETIME('now')
    );
    """);

    return projectId;
  }

  Future<bool> updateProjectOpenState(ProjectItemModel body, String id) async {
    db.execute("""
    UPDATE project
    SET is_open = '${body.isOpen}'
    WHERE id = $id;
    """);

    return true;
  }

  Future<bool> deleteProject(String id) async {
    db.execute("""DELETE FROM project WHERE id = $id; """);

    return true;
  }

  Future<int> createProjectReward(RewardItemModel body, String id) async {
    db.execute("""
    INSERT INTO reward (
        project_id,
        price,
        title,
        description,
        image_url,
        image_raw,
        created
    ) VALUES (
        $id,
        ${body.price},
        '${body.title}',
        '${body.description}',
        '${body.imageUrl}',
        '${Uint8List.fromList(body.imageRaw)}',
        DATETIME('now')
    ); 
    """);

    final lastPrjId = db.select("""
     SELECT * from project
    ORDER BY
    id DESC
    limit 1
    """);

    int projectId = 0;
    if (lastPrjId.isNotEmpty) {
      projectId = lastPrjId.first["id"] as int;
    }

    return projectId;
  }
}
