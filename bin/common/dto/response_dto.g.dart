// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDtoImpl _$$ResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDtoImpl(
      status: json['status'] as String?,
      msg: json['msg'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$ResponseDtoImplToJson(_$ResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'body': instance.body,
    };
