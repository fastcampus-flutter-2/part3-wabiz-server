import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/model/project_type.dart';

part 'project_type_dto.freezed.dart';

part 'project_type_dto.g.dart';

@freezed
class ProjectTypeDto with _$ProjectTypeDto {

  const factory ProjectTypeDto({
    @Default([]) List<ProjectType> data
  }) = _ProjectTypeDto;

  factory ProjectTypeDto.fromJson(Map<String, Object?> json) =>
      _$ProjectTypeDtoFromJson(json);
}
