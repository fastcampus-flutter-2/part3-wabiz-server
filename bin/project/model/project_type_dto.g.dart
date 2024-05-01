// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectTypeDtoImpl _$$ProjectTypeDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectTypeDtoImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProjectType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProjectTypeDtoImplToJson(
        _$ProjectTypeDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
