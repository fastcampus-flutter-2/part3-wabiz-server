// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeDto _$HomeDtoFromJson(Map<String, dynamic> json) {
  return _HomeDto.fromJson(json);
}

/// @nodoc
mixin _$HomeDto {
  String? get status => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  List<HomeItemModel>? get projects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDtoCopyWith<HomeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDtoCopyWith<$Res> {
  factory $HomeDtoCopyWith(HomeDto value, $Res Function(HomeDto) then) =
      _$HomeDtoCopyWithImpl<$Res, HomeDto>;
  @useResult
  $Res call({String? status, int? totalCount, List<HomeItemModel>? projects});
}

/// @nodoc
class _$HomeDtoCopyWithImpl<$Res, $Val extends HomeDto>
    implements $HomeDtoCopyWith<$Res> {
  _$HomeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalCount = freezed,
    Object? projects = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<HomeItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDtoImplCopyWith<$Res> implements $HomeDtoCopyWith<$Res> {
  factory _$$HomeDtoImplCopyWith(
          _$HomeDtoImpl value, $Res Function(_$HomeDtoImpl) then) =
      __$$HomeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, int? totalCount, List<HomeItemModel>? projects});
}

/// @nodoc
class __$$HomeDtoImplCopyWithImpl<$Res>
    extends _$HomeDtoCopyWithImpl<$Res, _$HomeDtoImpl>
    implements _$$HomeDtoImplCopyWith<$Res> {
  __$$HomeDtoImplCopyWithImpl(
      _$HomeDtoImpl _value, $Res Function(_$HomeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalCount = freezed,
    Object? projects = freezed,
  }) {
    return _then(_$HomeDtoImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<HomeItemModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$HomeDtoImpl implements _HomeDto {
  const _$HomeDtoImpl(
      {this.status,
      this.totalCount,
      final List<HomeItemModel>? projects = const []})
      : _projects = projects;

  factory _$HomeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDtoImplFromJson(json);

  @override
  final String? status;
  @override
  final int? totalCount;
  final List<HomeItemModel>? _projects;
  @override
  @JsonKey()
  List<HomeItemModel>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeDto(status: $status, totalCount: $totalCount, projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalCount,
      const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDtoImplCopyWith<_$HomeDtoImpl> get copyWith =>
      __$$HomeDtoImplCopyWithImpl<_$HomeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDtoImplToJson(
      this,
    );
  }
}

abstract class _HomeDto implements HomeDto {
  const factory _HomeDto(
      {final String? status,
      final int? totalCount,
      final List<HomeItemModel>? projects}) = _$HomeDtoImpl;

  factory _HomeDto.fromJson(Map<String, dynamic> json) = _$HomeDtoImpl.fromJson;

  @override
  String? get status;
  @override
  int? get totalCount;
  @override
  List<HomeItemModel>? get projects;
  @override
  @JsonKey(ignore: true)
  _$$HomeDtoImplCopyWith<_$HomeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
