// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) {
  return _ResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ResponseDto {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDtoCopyWith<ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDtoCopyWith<$Res> {
  factory $ResponseDtoCopyWith(
          ResponseDto value, $Res Function(ResponseDto) then) =
      _$ResponseDtoCopyWithImpl<$Res, ResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class _$ResponseDtoCopyWithImpl<$Res, $Val extends ResponseDto>
    implements $ResponseDtoCopyWith<$Res> {
  _$ResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDtoImplCopyWith<$Res>
    implements $ResponseDtoCopyWith<$Res> {
  factory _$$ResponseDtoImplCopyWith(
          _$ResponseDtoImpl value, $Res Function(_$ResponseDtoImpl) then) =
      __$$ResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class __$$ResponseDtoImplCopyWithImpl<$Res>
    extends _$ResponseDtoCopyWithImpl<$Res, _$ResponseDtoImpl>
    implements _$$ResponseDtoImplCopyWith<$Res> {
  __$$ResponseDtoImplCopyWithImpl(
      _$ResponseDtoImpl _value, $Res Function(_$ResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? body = freezed,
  }) {
    return _then(_$ResponseDtoImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDtoImpl implements _ResponseDto {
  const _$ResponseDtoImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: 'msg') this.msg,
      @JsonKey(name: 'body') this.body});

  factory _$ResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: 'msg')
  final String? msg;
  @override
  @JsonKey(name: 'body')
  final String? body;

  @override
  String toString() {
    return 'ResponseDto(status: $status, msg: $msg, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDtoImplCopyWith<_$ResponseDtoImpl> get copyWith =>
      __$$ResponseDtoImplCopyWithImpl<_$ResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ResponseDto implements ResponseDto {
  const factory _ResponseDto(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: 'msg') final String? msg,
      @JsonKey(name: 'body') final String? body}) = _$ResponseDtoImpl;

  factory _ResponseDto.fromJson(Map<String, dynamic> json) =
      _$ResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: 'msg')
  String? get msg;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDtoImplCopyWith<_$ResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
