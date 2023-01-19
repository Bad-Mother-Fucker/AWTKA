// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonModel _$$_LessonModelFromJson(Map<String, dynamic> json) =>
    _$_LessonModel(
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: const DateTimeConverter().fromJson(json['created']),
      date: DateTime.parse(json['date'] as String),
      id: json['id'] as String?,
      instructors: (json['instructors'] as List<dynamic>?)
          ?.map((e) => StudentRelationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      level: StudentLevelModel.fromJson(json['level'] as Map<String, dynamic>),
      name: json['name'] as String,
      note: json['note'] as String?,
      private: json['private'] as bool?,
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => StudentRelationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      updated: const DateTimeConverter().fromJson(json['updated']),
    );

Map<String, dynamic> _$$_LessonModelToJson(_$_LessonModel instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': const DateTimeConverter().toJson(instance.created),
      'date': instance.date.toIso8601String(),
      'id': instance.id,
      'instructors': instance.instructors,
      'level': instance.level,
      'name': instance.name,
      'note': instance.note,
      'private': instance.private,
      'students': instance.students,
      'updated': const DateTimeConverter().toJson(instance.updated),
    };
