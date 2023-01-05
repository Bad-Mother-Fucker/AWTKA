// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentModel _$$_StudentModelFromJson(Map<String, dynamic> json) =>
    _$_StudentModel(
      id: json['id'] as String?,
      address: json['address'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      email: json['email'] as String,
      last_name: json['last_name'] as String,
      name: json['name'] as String,
      student_level: StudentLevelModel.fromJson(
          json['student_level'] as Map<String, dynamic>),
      student_shirt_color: StudentShirtColorModel.fromJson(
          json['student_shirt_color'] as Map<String, dynamic>),
      telephone: json['telephone'] as String,
      instructor: json['instructor'] as bool,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      avatar: json['avatar'] as String?,
      certificates: json['certificates'] as String?,
      certificates_type: json['certificates_type'] as String?,
      certificates_size: json['certificates_size'] as int?,
      certificates_date: json['certificates_date'] == null
          ? null
          : DateTime.parse(json['certificates_date'] as String),
      contracts: json['contracts'] as String?,
      contracts_type: json['contracts_type'] as String?,
      contracts_size: json['contracts_size'] as int?,
      contracts_date: json['contracts_date'] == null
          ? null
          : DateTime.parse(json['contracts_date'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$_StudentModelToJson(_$_StudentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'dob': instance.dob?.toIso8601String(),
      'email': instance.email,
      'last_name': instance.last_name,
      'name': instance.name,
      'student_level': instance.student_level,
      'student_shirt_color': instance.student_shirt_color,
      'telephone': instance.telephone,
      'instructor': instance.instructor,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'avatar': instance.avatar,
      'certificates': instance.certificates,
      'certificates_type': instance.certificates_type,
      'certificates_size': instance.certificates_size,
      'certificates_date': instance.certificates_date?.toIso8601String(),
      'contracts': instance.contracts,
      'contracts_type': instance.contracts_type,
      'contracts_size': instance.contracts_size,
      'contracts_date': instance.contracts_date?.toIso8601String(),
      'notes': instance.notes,
    };

_$_StudentRelationModel _$$_StudentRelationModelFromJson(
        Map<String, dynamic> json) =>
    _$_StudentRelationModel(
      id: json['id'] as String?,
      address: json['address'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      email: json['email'] as String,
      last_name: json['last_name'] as String,
      name: json['name'] as String,
      student_level: json['student_level'] as String,
      student_shirt_color: json['student_shirt_color'] as String,
      telephone: json['telephone'] as String,
      instructor: json['instructor'] as bool,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      avatar: json['avatar'] as String?,
      certificates: json['certificates'] as String?,
      certificates_type: json['certificates_type'] as String?,
      certificates_size: json['certificates_size'] as int?,
      certificates_date: json['certificates_date'] == null
          ? null
          : DateTime.parse(json['certificates_date'] as String),
      contracts: json['contracts'] as String?,
      contracts_type: json['contracts_type'] as String?,
      contracts_size: json['contracts_size'] as int?,
      contracts_date: json['contracts_date'] == null
          ? null
          : DateTime.parse(json['contracts_date'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$_StudentRelationModelToJson(
        _$_StudentRelationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'dob': instance.dob?.toIso8601String(),
      'email': instance.email,
      'last_name': instance.last_name,
      'name': instance.name,
      'student_level': instance.student_level,
      'student_shirt_color': instance.student_shirt_color,
      'telephone': instance.telephone,
      'instructor': instance.instructor,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'avatar': instance.avatar,
      'certificates': instance.certificates,
      'certificates_type': instance.certificates_type,
      'certificates_size': instance.certificates_size,
      'certificates_date': instance.certificates_date?.toIso8601String(),
      'contracts': instance.contracts,
      'contracts_type': instance.contracts_type,
      'contracts_size': instance.contracts_size,
      'contracts_date': instance.contracts_date?.toIso8601String(),
      'notes': instance.notes,
    };
