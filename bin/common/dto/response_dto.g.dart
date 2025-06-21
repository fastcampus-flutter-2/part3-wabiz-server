// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) => _ResponseDto(
      status: json['status'] as String?,
      msg: json['msg'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$ResponseDtoToJson(_ResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'body': instance.body,
    };
