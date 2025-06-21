// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryItemModel {
  int? get id;
  int? get categoryId;
  int? get projectTypeId;
  String? get userId;
  String? get title;
  String? get owner;
  int? get price;
  String? get thumbnail;
  String? get count;
  String? get deadline;
  String? get description;
  String? get isOpen;
  int? get waitlistCount;
  int? get totalFundedCount;
  int? get totalFunded;
  String? get category;
  String? get projectType;
  List<int> get image;

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryItemModelCopyWith<CategoryItemModel> get copyWith =>
      _$CategoryItemModelCopyWithImpl<CategoryItemModel>(
          this as CategoryItemModel, _$identity);

  /// Serializes this CategoryItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.projectTypeId, projectTypeId) ||
                other.projectTypeId == projectTypeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.waitlistCount, waitlistCount) ||
                other.waitlistCount == waitlistCount) &&
            (identical(other.totalFundedCount, totalFundedCount) ||
                other.totalFundedCount == totalFundedCount) &&
            (identical(other.totalFunded, totalFunded) ||
                other.totalFunded == totalFunded) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.projectType, projectType) ||
                other.projectType == projectType) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryId,
      projectTypeId,
      userId,
      title,
      owner,
      price,
      thumbnail,
      count,
      deadline,
      description,
      isOpen,
      waitlistCount,
      totalFundedCount,
      totalFunded,
      category,
      projectType,
      const DeepCollectionEquality().hash(image));

  @override
  String toString() {
    return 'CategoryItemModel(id: $id, categoryId: $categoryId, projectTypeId: $projectTypeId, userId: $userId, title: $title, owner: $owner, price: $price, thumbnail: $thumbnail, count: $count, deadline: $deadline, description: $description, isOpen: $isOpen, waitlistCount: $waitlistCount, totalFundedCount: $totalFundedCount, totalFunded: $totalFunded, category: $category, projectType: $projectType, image: $image)';
  }
}

/// @nodoc
abstract mixin class $CategoryItemModelCopyWith<$Res> {
  factory $CategoryItemModelCopyWith(
          CategoryItemModel value, $Res Function(CategoryItemModel) _then) =
      _$CategoryItemModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
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
      List<int> image});
}

/// @nodoc
class _$CategoryItemModelCopyWithImpl<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  _$CategoryItemModelCopyWithImpl(this._self, this._then);

  final CategoryItemModel _self;
  final $Res Function(CategoryItemModel) _then;

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? projectTypeId = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? thumbnail = freezed,
    Object? count = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? isOpen = freezed,
    Object? waitlistCount = freezed,
    Object? totalFundedCount = freezed,
    Object? totalFunded = freezed,
    Object? category = freezed,
    Object? projectType = freezed,
    Object? image = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectTypeId: freezed == projectTypeId
          ? _self.projectTypeId
          : projectTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpen: freezed == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String?,
      waitlistCount: freezed == waitlistCount
          ? _self.waitlistCount
          : waitlistCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFundedCount: freezed == totalFundedCount
          ? _self.totalFundedCount
          : totalFundedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFunded: freezed == totalFunded
          ? _self.totalFunded
          : totalFunded // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      projectType: freezed == projectType
          ? _self.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CategoryItemModel implements CategoryItemModel {
  const _CategoryItemModel(
      {this.id,
      this.categoryId,
      this.projectTypeId,
      this.userId,
      this.title,
      this.owner,
      this.price,
      this.thumbnail,
      this.count,
      this.deadline,
      this.description,
      this.isOpen,
      this.waitlistCount,
      this.totalFundedCount,
      this.totalFunded,
      this.category,
      this.projectType,
      final List<int> image = const []})
      : _image = image;
  factory _CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);

  @override
  final int? id;
  @override
  final int? categoryId;
  @override
  final int? projectTypeId;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? owner;
  @override
  final int? price;
  @override
  final String? thumbnail;
  @override
  final String? count;
  @override
  final String? deadline;
  @override
  final String? description;
  @override
  final String? isOpen;
  @override
  final int? waitlistCount;
  @override
  final int? totalFundedCount;
  @override
  final int? totalFunded;
  @override
  final String? category;
  @override
  final String? projectType;
  final List<int> _image;
  @override
  @JsonKey()
  List<int> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryItemModelCopyWith<_CategoryItemModel> get copyWith =>
      __$CategoryItemModelCopyWithImpl<_CategoryItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.projectTypeId, projectTypeId) ||
                other.projectTypeId == projectTypeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.waitlistCount, waitlistCount) ||
                other.waitlistCount == waitlistCount) &&
            (identical(other.totalFundedCount, totalFundedCount) ||
                other.totalFundedCount == totalFundedCount) &&
            (identical(other.totalFunded, totalFunded) ||
                other.totalFunded == totalFunded) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.projectType, projectType) ||
                other.projectType == projectType) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryId,
      projectTypeId,
      userId,
      title,
      owner,
      price,
      thumbnail,
      count,
      deadline,
      description,
      isOpen,
      waitlistCount,
      totalFundedCount,
      totalFunded,
      category,
      projectType,
      const DeepCollectionEquality().hash(_image));

  @override
  String toString() {
    return 'CategoryItemModel(id: $id, categoryId: $categoryId, projectTypeId: $projectTypeId, userId: $userId, title: $title, owner: $owner, price: $price, thumbnail: $thumbnail, count: $count, deadline: $deadline, description: $description, isOpen: $isOpen, waitlistCount: $waitlistCount, totalFundedCount: $totalFundedCount, totalFunded: $totalFunded, category: $category, projectType: $projectType, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$CategoryItemModelCopyWith<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  factory _$CategoryItemModelCopyWith(
          _CategoryItemModel value, $Res Function(_CategoryItemModel) _then) =
      __$CategoryItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
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
      List<int> image});
}

/// @nodoc
class __$CategoryItemModelCopyWithImpl<$Res>
    implements _$CategoryItemModelCopyWith<$Res> {
  __$CategoryItemModelCopyWithImpl(this._self, this._then);

  final _CategoryItemModel _self;
  final $Res Function(_CategoryItemModel) _then;

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? projectTypeId = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? thumbnail = freezed,
    Object? count = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? isOpen = freezed,
    Object? waitlistCount = freezed,
    Object? totalFundedCount = freezed,
    Object? totalFunded = freezed,
    Object? category = freezed,
    Object? projectType = freezed,
    Object? image = null,
  }) {
    return _then(_CategoryItemModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectTypeId: freezed == projectTypeId
          ? _self.projectTypeId
          : projectTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpen: freezed == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String?,
      waitlistCount: freezed == waitlistCount
          ? _self.waitlistCount
          : waitlistCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFundedCount: freezed == totalFundedCount
          ? _self.totalFundedCount
          : totalFundedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFunded: freezed == totalFunded
          ? _self.totalFunded
          : totalFunded // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      projectType: freezed == projectType
          ? _self.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _self._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

// dart format on
