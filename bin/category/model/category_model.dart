import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryItemModel with _$CategoryItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryItemModel({
    int? id,
    int? categoryId,
    int? projectTypeId,
    String? userId,
    String? title,
    String? owner,
    int? price,
    String? thumbnail,
    String? count,
    String? deadline,
    String? description,
    String? isOpen,
    int? waitlistCount,
    int? totalFundedCount,
    int? totalFunded,
    String? category,
    String? projectType,
    @Default([]) List<int> image,
  }) = _CategoryItemModel;

  factory CategoryItemModel.fromJson(Map<String, Object?> json) =>
      _$CategoryItemModelFromJson(json);
}
