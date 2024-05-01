import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/model/costom_converter.dart';

part 'reward_model.freezed.dart';

part 'reward_model.g.dart';

@freezed
class RewardItemModel with _$RewardItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RewardItemModel({
    int? id,
    // int? categoryId,
    int? projectId,
    String? imageUrl,
    String? title,
    int? price,
    String? description,
    @Default([]) List<int> imageRaw,
  }) = _RewardItemModel;

  factory RewardItemModel.fromJson(Map<String, Object?> json) =>
      _$RewardItemModelFromJson(json);
}
