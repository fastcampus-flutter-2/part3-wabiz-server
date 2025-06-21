// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectTypeDto {
  List<ProjectType> get data;

  /// Create a copy of ProjectTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectTypeDtoCopyWith<ProjectTypeDto> get copyWith =>
      _$ProjectTypeDtoCopyWithImpl<ProjectTypeDto>(
          this as ProjectTypeDto, _$identity);

  /// Serializes this ProjectTypeDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectTypeDto &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ProjectTypeDto(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ProjectTypeDtoCopyWith<$Res> {
  factory $ProjectTypeDtoCopyWith(
          ProjectTypeDto value, $Res Function(ProjectTypeDto) _then) =
      _$ProjectTypeDtoCopyWithImpl;
  @useResult
  $Res call({List<ProjectType> data});
}

/// @nodoc
class _$ProjectTypeDtoCopyWithImpl<$Res>
    implements $ProjectTypeDtoCopyWith<$Res> {
  _$ProjectTypeDtoCopyWithImpl(this._self, this._then);

  final ProjectTypeDto _self;
  final $Res Function(ProjectTypeDto) _then;

  /// Create a copy of ProjectTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProjectType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProjectTypeDto implements ProjectTypeDto {
  const _ProjectTypeDto({final List<ProjectType> data = const []})
      : _data = data;
  factory _ProjectTypeDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectTypeDtoFromJson(json);

  final List<ProjectType> _data;
  @override
  @JsonKey()
  List<ProjectType> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of ProjectTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectTypeDtoCopyWith<_ProjectTypeDto> get copyWith =>
      __$ProjectTypeDtoCopyWithImpl<_ProjectTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProjectTypeDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectTypeDto &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ProjectTypeDto(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ProjectTypeDtoCopyWith<$Res>
    implements $ProjectTypeDtoCopyWith<$Res> {
  factory _$ProjectTypeDtoCopyWith(
          _ProjectTypeDto value, $Res Function(_ProjectTypeDto) _then) =
      __$ProjectTypeDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<ProjectType> data});
}

/// @nodoc
class __$ProjectTypeDtoCopyWithImpl<$Res>
    implements _$ProjectTypeDtoCopyWith<$Res> {
  __$ProjectTypeDtoCopyWithImpl(this._self, this._then);

  final _ProjectTypeDto _self;
  final $Res Function(_ProjectTypeDto) _then;

  /// Create a copy of ProjectTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_ProjectTypeDto(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProjectType>,
    ));
  }
}

// dart format on
