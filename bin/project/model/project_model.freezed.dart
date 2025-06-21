// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectItemModel {
  int? get id;
  int? get categoryId;
  int? get projectTypeId;
  String? get projectClass;
  String? get userId;
  String? get title;
  String? get owner; // 메이커 명
  int? get price;
  String? get thumbnail;
  String? get count;
  String? get deadline;
  String? get description;
  int? get waitlistCount;
  int? get totalFundedCount;
  int? get totalFunded;
  String? get isOpen;
  String? get category;
  String? get type;
  List<int>? get projectImage;

  /// Create a copy of ProjectItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectItemModelCopyWith<ProjectItemModel> get copyWith =>
      _$ProjectItemModelCopyWithImpl<ProjectItemModel>(
          this as ProjectItemModel, _$identity);

  /// Serializes this ProjectItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.projectTypeId, projectTypeId) ||
                other.projectTypeId == projectTypeId) &&
            (identical(other.projectClass, projectClass) ||
                other.projectClass == projectClass) &&
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
            (identical(other.waitlistCount, waitlistCount) ||
                other.waitlistCount == waitlistCount) &&
            (identical(other.totalFundedCount, totalFundedCount) ||
                other.totalFundedCount == totalFundedCount) &&
            (identical(other.totalFunded, totalFunded) ||
                other.totalFunded == totalFunded) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.projectImage, projectImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryId,
        projectTypeId,
        projectClass,
        userId,
        title,
        owner,
        price,
        thumbnail,
        count,
        deadline,
        description,
        waitlistCount,
        totalFundedCount,
        totalFunded,
        isOpen,
        category,
        type,
        const DeepCollectionEquality().hash(projectImage)
      ]);

  @override
  String toString() {
    return 'ProjectItemModel(id: $id, categoryId: $categoryId, projectTypeId: $projectTypeId, projectClass: $projectClass, userId: $userId, title: $title, owner: $owner, price: $price, thumbnail: $thumbnail, count: $count, deadline: $deadline, description: $description, waitlistCount: $waitlistCount, totalFundedCount: $totalFundedCount, totalFunded: $totalFunded, isOpen: $isOpen, category: $category, type: $type, projectImage: $projectImage)';
  }
}

/// @nodoc
abstract mixin class $ProjectItemModelCopyWith<$Res> {
  factory $ProjectItemModelCopyWith(
          ProjectItemModel value, $Res Function(ProjectItemModel) _then) =
      _$ProjectItemModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      int? categoryId,
      int? projectTypeId,
      String? projectClass,
      String? userId,
      String? title,
      String? owner,
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
      List<int>? projectImage});
}

/// @nodoc
class _$ProjectItemModelCopyWithImpl<$Res>
    implements $ProjectItemModelCopyWith<$Res> {
  _$ProjectItemModelCopyWithImpl(this._self, this._then);

  final ProjectItemModel _self;
  final $Res Function(ProjectItemModel) _then;

  /// Create a copy of ProjectItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? projectTypeId = freezed,
    Object? projectClass = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? thumbnail = freezed,
    Object? count = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? waitlistCount = freezed,
    Object? totalFundedCount = freezed,
    Object? totalFunded = freezed,
    Object? isOpen = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? projectImage = freezed,
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
      projectClass: freezed == projectClass
          ? _self.projectClass
          : projectClass // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isOpen: freezed == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      projectImage: freezed == projectImage
          ? _self.projectImage
          : projectImage // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ProjectItemModel implements ProjectItemModel {
  const _ProjectItemModel(
      {this.id,
      this.categoryId,
      this.projectTypeId,
      this.projectClass,
      this.userId,
      this.title,
      this.owner,
      this.price,
      this.thumbnail,
      this.count,
      this.deadline,
      this.description,
      this.waitlistCount,
      this.totalFundedCount,
      this.totalFunded,
      this.isOpen,
      this.category,
      this.type,
      final List<int>? projectImage = const []})
      : _projectImage = projectImage;
  factory _ProjectItemModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectItemModelFromJson(json);

  @override
  final int? id;
  @override
  final int? categoryId;
  @override
  final int? projectTypeId;
  @override
  final String? projectClass;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? owner;
// 메이커 명
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
  final int? waitlistCount;
  @override
  final int? totalFundedCount;
  @override
  final int? totalFunded;
  @override
  final String? isOpen;
  @override
  final String? category;
  @override
  final String? type;
  final List<int>? _projectImage;
  @override
  @JsonKey()
  List<int>? get projectImage {
    final value = _projectImage;
    if (value == null) return null;
    if (_projectImage is EqualUnmodifiableListView) return _projectImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ProjectItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectItemModelCopyWith<_ProjectItemModel> get copyWith =>
      __$ProjectItemModelCopyWithImpl<_ProjectItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProjectItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.projectTypeId, projectTypeId) ||
                other.projectTypeId == projectTypeId) &&
            (identical(other.projectClass, projectClass) ||
                other.projectClass == projectClass) &&
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
            (identical(other.waitlistCount, waitlistCount) ||
                other.waitlistCount == waitlistCount) &&
            (identical(other.totalFundedCount, totalFundedCount) ||
                other.totalFundedCount == totalFundedCount) &&
            (identical(other.totalFunded, totalFunded) ||
                other.totalFunded == totalFunded) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._projectImage, _projectImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryId,
        projectTypeId,
        projectClass,
        userId,
        title,
        owner,
        price,
        thumbnail,
        count,
        deadline,
        description,
        waitlistCount,
        totalFundedCount,
        totalFunded,
        isOpen,
        category,
        type,
        const DeepCollectionEquality().hash(_projectImage)
      ]);

  @override
  String toString() {
    return 'ProjectItemModel(id: $id, categoryId: $categoryId, projectTypeId: $projectTypeId, projectClass: $projectClass, userId: $userId, title: $title, owner: $owner, price: $price, thumbnail: $thumbnail, count: $count, deadline: $deadline, description: $description, waitlistCount: $waitlistCount, totalFundedCount: $totalFundedCount, totalFunded: $totalFunded, isOpen: $isOpen, category: $category, type: $type, projectImage: $projectImage)';
  }
}

/// @nodoc
abstract mixin class _$ProjectItemModelCopyWith<$Res>
    implements $ProjectItemModelCopyWith<$Res> {
  factory _$ProjectItemModelCopyWith(
          _ProjectItemModel value, $Res Function(_ProjectItemModel) _then) =
      __$ProjectItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      int? categoryId,
      int? projectTypeId,
      String? projectClass,
      String? userId,
      String? title,
      String? owner,
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
      List<int>? projectImage});
}

/// @nodoc
class __$ProjectItemModelCopyWithImpl<$Res>
    implements _$ProjectItemModelCopyWith<$Res> {
  __$ProjectItemModelCopyWithImpl(this._self, this._then);

  final _ProjectItemModel _self;
  final $Res Function(_ProjectItemModel) _then;

  /// Create a copy of ProjectItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? projectTypeId = freezed,
    Object? projectClass = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? thumbnail = freezed,
    Object? count = freezed,
    Object? deadline = freezed,
    Object? description = freezed,
    Object? waitlistCount = freezed,
    Object? totalFundedCount = freezed,
    Object? totalFunded = freezed,
    Object? isOpen = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? projectImage = freezed,
  }) {
    return _then(_ProjectItemModel(
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
      projectClass: freezed == projectClass
          ? _self.projectClass
          : projectClass // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isOpen: freezed == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      projectImage: freezed == projectImage
          ? _self._projectImage
          : projectImage // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

// dart format on
