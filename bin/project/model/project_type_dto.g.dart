// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectTypeDto _$ProjectTypeDtoFromJson(Map<String, dynamic> json) =>
    _ProjectTypeDto(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProjectType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProjectTypeDtoToJson(_ProjectTypeDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
