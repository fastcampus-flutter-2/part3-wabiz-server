import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/model/project_type.dart';
import 'project_model.dart';

part 'project_dto.freezed.dart';

part 'project_dto.g.dart';

@freezed
class ProjectDto with _$ProjectDto {
  const factory ProjectDto({@Default([]) List<ProjectItemModel> data}) =
      _ProjectDto;

  factory ProjectDto.fromJson(Map<String, Object?> json) =>
      _$ProjectDtoFromJson(json);
}
