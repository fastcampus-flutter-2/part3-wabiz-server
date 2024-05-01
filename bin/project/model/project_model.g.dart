// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectItemModelImpl _$$ProjectItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectItemModelImpl(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      projectTypeId: json['project_type_id'] as int?,
      projectClass: json['project_class'] as String?,
      userId: json['user_id'] as String?,
      title: json['title'] as String?,
      owner: json['owner'] as String?,
      price: json['price'] as int?,
      thumbnail: json['thumbnail'] as String?,
      count: json['count'] as String?,
      deadline: json['deadline'] as String?,
      description: json['description'] as String?,
      isOpen: json['is_open'] as String?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      projectImage: (json['project_image'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProjectItemModelImplToJson(
        _$ProjectItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'project_type_id': instance.projectTypeId,
      'project_class': instance.projectClass,
      'user_id': instance.userId,
      'title': instance.title,
      'owner': instance.owner,
      'price': instance.price,
      'thumbnail': instance.thumbnail,
      'count': instance.count,
      'deadline': instance.deadline,
      'description': instance.description,
      'is_open': instance.isOpen,
      'category': instance.category,
      'type': instance.type,
      'project_image': instance.projectImage,
    };
