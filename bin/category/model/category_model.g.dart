// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryItemModelImpl _$$CategoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryItemModelImpl(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      projectTypeId: json['project_type_id'] as int?,
      userId: json['user_id'] as String?,
      title: json['title'] as String?,
      owner: json['owner'] as String?,
      price: json['price'] as int?,
      thumbnail: json['thumbnail'] as String?,
      count: json['count'] as String?,
      deadline: json['deadline'] as String?,
      description: json['description'] as String?,
      isOpen: json['is_open'] as String?,
      waitlistCount: json['waitlist_count'] as int?,
      totalFundedCount: json['total_funded_count'] as int?,
      totalFunded: json['total_funded'] as int?,
      category: json['category'] as String?,
      projectType: json['project_type'] as String?,
      image: (json['image'] as List<dynamic>?)?.map((e) => e as int).toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryItemModelImplToJson(
        _$CategoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'project_type_id': instance.projectTypeId,
      'user_id': instance.userId,
      'title': instance.title,
      'owner': instance.owner,
      'price': instance.price,
      'thumbnail': instance.thumbnail,
      'count': instance.count,
      'deadline': instance.deadline,
      'description': instance.description,
      'is_open': instance.isOpen,
      'waitlist_count': instance.waitlistCount,
      'total_funded_count': instance.totalFundedCount,
      'total_funded': instance.totalFunded,
      'category': instance.category,
      'project_type': instance.projectType,
      'image': instance.image,
    };
