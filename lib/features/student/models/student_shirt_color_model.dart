import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

part 'student_shirt_color_model.freezed.dart';
part 'student_shirt_color_model.g.dart';

@freezed
class StudentShirtColorModel extends BaseModel with _$StudentShirtColorModel {
  const factory StudentShirtColorModel({
    String? id,
    String? name,
    String? color,
    int? sort,
  }) = _StudentShirtColorModel;

  factory StudentShirtColorModel.fromJson(Map<String, Object?> json) =>
      _$StudentShirtColorModelFromJson(json);
}
