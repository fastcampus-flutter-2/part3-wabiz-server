// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDtoImpl _$$ProjectDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectDtoImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProjectItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProjectDtoImplToJson(_$ProjectDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
