import 'package:sqlite3/sqlite3.dart';

import 'model/home_model.dart';

class HomeService {
  final Database db;

  HomeService(this.db);

  Future<List<HomeItemModel>?> getProjects() async {
    final ResultSet resultSet = db.select("""
          SELECT
            project.*,
            COUNT(waitlist.user_id) AS waitlist_count,
            SUM(fund.user_id) AS total_funded_count,
            SUM(fund.price) AS total_funded,
            categories.category,
            project_type.type
          FROM project
          LEFT JOIN waitlist ON project.id = waitlist.project_id
          LEFT JOIN fund ON project.id = fund.project_id
          LEFT JOIN categories ON project.category_id = categories.id
          LEFT JOIN project_type ON project.project_type_id = project_type.id
          GROUP BY project.id
          LIMIT 0, 10;
          """);
    List<HomeItemModel> result = [];
    for (final Row row in resultSet) {
      print(row.toString());
      result.add(HomeItemModel.fromJson(row));
    }
    return result;
  }
}