// To parse this JSON data, do
//
//     final lessonResponseModel = lessonResponseModelFromMap(jsonString);

import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
class LessonModel extends BaseModel with _$LessonModel {
  const factory LessonModel({
    required String collectionId,
    required String collectionName,
    required DateTime created,
    required DateTime date,
    required String id,
    required List<String>? instructors,
    required StudentLevelModel level,
    required String name,
    required String? note,
    required bool? private,
    required List<String>? students,
    required DateTime updated,
  }) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);
}
