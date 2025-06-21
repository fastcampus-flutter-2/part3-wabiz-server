// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDto _$HomeDtoFromJson(Map<String, dynamic> json) => _HomeDto(
      status: json['status'] as String?,
      totalCount: (json['total_count'] as num?)?.toInt(),
      projects: (json['projects'] as List<dynamic>?)
              ?.map((e) => HomeItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeDtoToJson(_HomeDto instance) => <String, dynamic>{
      'status': instance.status,
      'total_count': instance.totalCount,
      'projects': instance.projects,
    };
