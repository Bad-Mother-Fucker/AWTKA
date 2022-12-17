import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

part 'student_level_model.freezed.dart';
part 'student_level_model.g.dart';

const studentAllFilter = StudentLevelModel(
  id: '-1',
  name: 'All',
);

@freezed
class StudentLevelModel extends BaseModel with _$StudentLevelModel {
  const factory StudentLevelModel({
    String? id,
    String? name,
    int? sort,
  }) = _StudentLevelModel;

  factory StudentLevelModel.fromJson(Map<String, Object?> json) =>
      _$StudentLevelModelFromJson(json);
}
