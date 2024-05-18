// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDtoImpl _$$HomeDtoImplFromJson(Map<String, dynamic> json) =>
    _$HomeDtoImpl(
      status: json['status'] as String?,
      totalCount: (json['total_count'] as num?)?.toInt(),
      projects: (json['projects'] as List<dynamic>?)
              ?.map((e) => HomeItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeDtoImplToJson(_$HomeDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_count': instance.totalCount,
      'projects': instance.projects,
    };
