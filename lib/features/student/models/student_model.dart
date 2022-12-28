import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:awtka/features/student/models/student_shirt_color_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

String getAvatarUrl(StudentModel data) {
  const defaultAvatar =
      'http://ec2-13-39-48-184.eu-west-3.compute.amazonaws.com/api/files/1zl9fe4fq7memwq/smnp6dxsjevybkb/profile_icon_png_image_free_download_searchpng_profile_removebg_preview_1_tcv_ZLYcw50h1L.png';
  if (data.avatar == null || data.avatar!.isEmpty) return defaultAvatar;

  const baseUrl = 'http://ec2-13-39-48-184.eu-west-3.compute.amazonaws.com';
  return '$baseUrl/api/files/${data.collectionId}/${data.id}/${data.avatar}';
}

final emptyStudent = StudentModel(
  id: '-1',
  address: '',
  dob: null,
  email: '',
  instructor: false,
  last_name: '',
  name: '',
  student_level: StudentLevelModel(),
  student_shirt_color: StudentShirtColorModel(),
  telephone: '',
);

@freezed
class StudentModel extends BaseModel with _$StudentModel {
  const factory StudentModel({
    String? id,
    required String? address,
    required DateTime? dob,
    required String email,
    required String last_name,
    required String name,
    required StudentLevelModel student_level,
    required StudentShirtColorModel student_shirt_color,
    required String telephone,
    required bool instructor,
    DateTime? created,
    DateTime? updated,
    String? collectionId,
    String? collectionName,
    String? avatar,
    String? certificates,
    String? certificates_type,
    int? certificates_size,
    DateTime? certificates_date,
    String? contracts,
    String? contracts_type,
    int? contracts_size,
    DateTime? contracts_date,
    String? notes,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, Object?> json) =>
      _$StudentModelFromJson(json);
}
