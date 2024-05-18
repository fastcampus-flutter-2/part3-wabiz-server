import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/model/costom_converter.dart';

part 'project_model.freezed.dart';

part 'project_model.g.dart';

@freezed
class ProjectItemModel with _$ProjectItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProjectItemModel({
    int? id,
    int? categoryId,
    int? projectTypeId,
    String? projectClass,
    String? userId,
    String? title,
    String? owner, // 메이커 명
    int? price,
    String? thumbnail,
    String? count,
    String? deadline,
    String? description,
    int? waitlistCount,
    int? totalFundedCount,
    int? totalFunded,
    String? isOpen,
    String? category,
    String? type,
    @Default([]) List<int>? projectImage,
  }) = _ProjectItemModel;

  factory ProjectItemModel.fromJson(Map<String, Object?> json) =>
      _$ProjectItemModelFromJson(json);
}
