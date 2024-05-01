import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_model.dart';

part 'category_dto.freezed.dart';

part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryDto({
    String? status,
    int? totalCount,
    @Default([]) List<CategoryItemModel>? projects,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, Object?> json) =>
      _$CategoryDtoFromJson(json);
}
