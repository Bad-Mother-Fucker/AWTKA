import 'package:awtka/common/converter/app_converter.dart';
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

const emptyStudent = StudentModel(
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
    @DateTimeConverter() required DateTime? dob,
    required String email,
    required String last_name,
    required String name,
    required StudentLevelModel student_level,
    required StudentShirtColorModel student_shirt_color,
    required String telephone,
    required bool instructor,
    @DateTimeConverter() DateTime? created,
    @DateTimeConverter() DateTime? updated,
    String? collectionId,
    String? collectionName,
    String? avatar,
    String? certificates,
    String? certificates_type,
    int? certificates_size,
    @DateTimeConverter() DateTime? certificates_date,
    String? contracts,
    String? contracts_type,
    int? contracts_size,
    @DateTimeConverter() DateTime? contracts_date,
    String? notes,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, Object?> json) =>
      _$StudentModelFromJson(json);
}

@freezed
class StudentRelationModel extends BaseModel with _$StudentRelationModel {
  const factory StudentRelationModel({
    String? id,
    required String? address,
    required DateTime? dob,
    required String email,
    required String last_name,
    required String name,
    required String student_level,
    required String student_shirt_color,
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
  }) = _StudentRelationModel;

  factory StudentRelationModel.fromJson(Map<String, Object?> json) =>
      _$StudentRelationModelFromJson(json);
}

StudentRelationModel studentRelationToModel(StudentModel model) {
  return StudentRelationModel(
    id: model.id,
    address: model.address,
    dob: model.dob,
    email: model.email,
    last_name: model.last_name,
    name: model.name,
    student_level: model.student_level.id.toString(),
    student_shirt_color: model.student_shirt_color.id.toString(),
    telephone: model.telephone,
    instructor: model.instructor,
    created: model.created,
    updated: model.updated,
    collectionId: model.collectionId,
    collectionName: model.collectionName,
    avatar: model.avatar,
    certificates: model.certificates,
    certificates_type: model.certificates_type,
    certificates_size: model.certificates_size,
    certificates_date: model.certificates_date,
    contracts: model.contracts,
    contracts_type: model.contracts_type,
    contracts_size: model.contracts_size,
    contracts_date: model.contracts_date,
    notes: model.notes,
  );
}

StudentModel studentToModelRelation(StudentRelationModel relationModel) {
  return StudentModel(
    id: relationModel.id,
    address: relationModel.address,
    dob: relationModel.dob,
    email: relationModel.email,
    last_name: relationModel.last_name,
    name: relationModel.name,
    student_level: StudentLevelModel(id: relationModel.student_level),
    student_shirt_color:
        StudentShirtColorModel(id: relationModel.student_shirt_color),
    telephone: relationModel.telephone,
    instructor: relationModel.instructor,
    created: relationModel.created,
    updated: relationModel.updated,
    collectionId: relationModel.collectionId,
    collectionName: relationModel.collectionName,
    avatar: relationModel.avatar,
    certificates: relationModel.certificates,
    certificates_type: relationModel.certificates_type,
    certificates_size: relationModel.certificates_size,
    certificates_date: relationModel.certificates_date,
    contracts: relationModel.contracts,
    contracts_type: relationModel.contracts_type,
    contracts_size: relationModel.contracts_size,
    contracts_date: relationModel.contracts_date,
    notes: relationModel.notes,
  );
}
