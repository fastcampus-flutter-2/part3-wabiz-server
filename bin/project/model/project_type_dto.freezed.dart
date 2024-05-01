// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectTypeDto _$ProjectTypeDtoFromJson(Map<String, dynamic> json) {
  return _ProjectTypeDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectTypeDto {
  List<ProjectType> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectTypeDtoCopyWith<ProjectTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTypeDtoCopyWith<$Res> {
  factory $ProjectTypeDtoCopyWith(
          ProjectTypeDto value, $Res Function(ProjectTypeDto) then) =
      _$ProjectTypeDtoCopyWithImpl<$Res, ProjectTypeDto>;
  @useResult
  $Res call({List<ProjectType> data});
}

/// @nodoc
class _$ProjectTypeDtoCopyWithImpl<$Res, $Val extends ProjectTypeDto>
    implements $ProjectTypeDtoCopyWith<$Res> {
  _$ProjectTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProjectType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectTypeDtoImplCopyWith<$Res>
    implements $ProjectTypeDtoCopyWith<$Res> {
  factory _$$ProjectTypeDtoImplCopyWith(_$ProjectTypeDtoImpl value,
          $Res Function(_$ProjectTypeDtoImpl) then) =
      __$$ProjectTypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProjectType> data});
}

/// @nodoc
class __$$ProjectTypeDtoImplCopyWithImpl<$Res>
    extends _$ProjectTypeDtoCopyWithImpl<$Res, _$ProjectTypeDtoImpl>
    implements _$$ProjectTypeDtoImplCopyWith<$Res> {
  __$$ProjectTypeDtoImplCopyWithImpl(
      _$ProjectTypeDtoImpl _value, $Res Function(_$ProjectTypeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ProjectTypeDtoImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProjectType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectTypeDtoImpl implements _ProjectTypeDto {
  const _$ProjectTypeDtoImpl({final List<ProjectType> data = const []})
      : _data = data;

  factory _$ProjectTypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectTypeDtoImplFromJson(json);

  final List<ProjectType> _data;
  @override
  @JsonKey()
  List<ProjectType> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProjectTypeDto(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectTypeDtoImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectTypeDtoImplCopyWith<_$ProjectTypeDtoImpl> get copyWith =>
      __$$ProjectTypeDtoImplCopyWithImpl<_$ProjectTypeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectTypeDtoImplToJson(
      this,
    );
  }
}

abstract class _ProjectTypeDto implements ProjectTypeDto {
  const factory _ProjectTypeDto({final List<ProjectType> data}) =
      _$ProjectTypeDtoImpl;

  factory _ProjectTypeDto.fromJson(Map<String, dynamic> json) =
      _$ProjectTypeDtoImpl.fromJson;

  @override
  List<ProjectType> get data;
  @override
  @JsonKey(ignore: true)
  _$$ProjectTypeDtoImplCopyWith<_$ProjectTypeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
