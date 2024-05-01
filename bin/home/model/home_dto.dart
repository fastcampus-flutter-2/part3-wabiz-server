import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_model.dart';

part 'home_dto.freezed.dart';

part 'home_dto.g.dart';

@freezed
class HomeDto with _$HomeDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HomeDto({
    String? status,
    int? totalCount,
    @Default([]) List<HomeItemModel>? projects,
  }) = _HomeDto;

  factory HomeDto.fromJson(Map<String, Object?> json) =>
      _$HomeDtoFromJson(json);
}
