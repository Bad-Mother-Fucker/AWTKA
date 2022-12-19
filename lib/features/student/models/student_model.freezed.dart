// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  String? get id => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  StudentLevelModel get student_level => throw _privateConstructorUsedError;
  StudentShirtColorModel get student_shirt_color =>
      throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;
  bool get instructor => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get certificates => throw _privateConstructorUsedError;
  String? get certificates_type => throw _privateConstructorUsedError;
  int? get certificates_size => throw _privateConstructorUsedError;
  DateTime? get certificates_date => throw _privateConstructorUsedError;
  String? get contracts => throw _privateConstructorUsedError;
  String? get contracts_type => throw _privateConstructorUsedError;
  int? get contracts_size => throw _privateConstructorUsedError;
  DateTime? get contracts_date => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentModelCopyWith<StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
          StudentModel value, $Res Function(StudentModel) then) =
      _$StudentModelCopyWithImpl<$Res, StudentModel>;
  @useResult
  $Res call(
      {String? id,
      String? address,
      DateTime? dob,
      String email,
      String last_name,
      String name,
      StudentLevelModel student_level,
      StudentShirtColorModel student_shirt_color,
      String telephone,
      bool instructor,
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
      String? notes});

  $StudentLevelModelCopyWith<$Res> get student_level;
  $StudentShirtColorModelCopyWith<$Res> get student_shirt_color;
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res, $Val extends StudentModel>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? dob = freezed,
    Object? email = null,
    Object? last_name = null,
    Object? name = null,
    Object? student_level = null,
    Object? student_shirt_color = null,
    Object? telephone = null,
    Object? instructor = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? avatar = freezed,
    Object? certificates = freezed,
    Object? certificates_type = freezed,
    Object? certificates_size = freezed,
    Object? certificates_date = freezed,
    Object? contracts = freezed,
    Object? contracts_type = freezed,
    Object? contracts_size = freezed,
    Object? contracts_date = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      student_level: null == student_level
          ? _value.student_level
          : student_level // ignore: cast_nullable_to_non_nullable
              as StudentLevelModel,
      student_shirt_color: null == student_shirt_color
          ? _value.student_shirt_color
          : student_shirt_color // ignore: cast_nullable_to_non_nullable
              as StudentShirtColorModel,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as bool,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates: freezed == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates_type: freezed == certificates_type
          ? _value.certificates_type
          : certificates_type // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates_size: freezed == certificates_size
          ? _value.certificates_size
          : certificates_size // ignore: cast_nullable_to_non_nullable
              as int?,
      certificates_date: freezed == certificates_date
          ? _value.certificates_date
          : certificates_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contracts: freezed == contracts
          ? _value.contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as String?,
      contracts_type: freezed == contracts_type
          ? _value.contracts_type
          : contracts_type // ignore: cast_nullable_to_non_nullable
              as String?,
      contracts_size: freezed == contracts_size
          ? _value.contracts_size
          : contracts_size // ignore: cast_nullable_to_non_nullable
              as int?,
      contracts_date: freezed == contracts_date
          ? _value.contracts_date
          : contracts_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentLevelModelCopyWith<$Res> get student_level {
    return $StudentLevelModelCopyWith<$Res>(_value.student_level, (value) {
      return _then(_value.copyWith(student_level: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentShirtColorModelCopyWith<$Res> get student_shirt_color {
    return $StudentShirtColorModelCopyWith<$Res>(_value.student_shirt_color,
        (value) {
      return _then(_value.copyWith(student_shirt_color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StudentModelCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$$_StudentModelCopyWith(
          _$_StudentModel value, $Res Function(_$_StudentModel) then) =
      __$$_StudentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? address,
      DateTime? dob,
      String email,
      String last_name,
      String name,
      StudentLevelModel student_level,
      StudentShirtColorModel student_shirt_color,
      String telephone,
      bool instructor,
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
      String? notes});

  @override
  $StudentLevelModelCopyWith<$Res> get student_level;
  @override
  $StudentShirtColorModelCopyWith<$Res> get student_shirt_color;
}

/// @nodoc
class __$$_StudentModelCopyWithImpl<$Res>
    extends _$StudentModelCopyWithImpl<$Res, _$_StudentModel>
    implements _$$_StudentModelCopyWith<$Res> {
  __$$_StudentModelCopyWithImpl(
      _$_StudentModel _value, $Res Function(_$_StudentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? dob = freezed,
    Object? email = null,
    Object? last_name = null,
    Object? name = null,
    Object? student_level = null,
    Object? student_shirt_color = null,
    Object? telephone = null,
    Object? instructor = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? avatar = freezed,
    Object? certificates = freezed,
    Object? certificates_type = freezed,
    Object? certificates_size = freezed,
    Object? certificates_date = freezed,
    Object? contracts = freezed,
    Object? contracts_type = freezed,
    Object? contracts_size = freezed,
    Object? contracts_date = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_StudentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      student_level: null == student_level
          ? _value.student_level
          : student_level // ignore: cast_nullable_to_non_nullable
              as StudentLevelModel,
      student_shirt_color: null == student_shirt_color
          ? _value.student_shirt_color
          : student_shirt_color // ignore: cast_nullable_to_non_nullable
              as StudentShirtColorModel,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as bool,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates: freezed == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates_type: freezed == certificates_type
          ? _value.certificates_type
          : certificates_type // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates_size: freezed == certificates_size
          ? _value.certificates_size
          : certificates_size // ignore: cast_nullable_to_non_nullable
              as int?,
      certificates_date: freezed == certificates_date
          ? _value.certificates_date
          : certificates_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contracts: freezed == contracts
          ? _value.contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as String?,
      contracts_type: freezed == contracts_type
          ? _value.contracts_type
          : contracts_type // ignore: cast_nullable_to_non_nullable
              as String?,
      contracts_size: freezed == contracts_size
          ? _value.contracts_size
          : contracts_size // ignore: cast_nullable_to_non_nullable
              as int?,
      contracts_date: freezed == contracts_date
          ? _value.contracts_date
          : contracts_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentModel with DiagnosticableTreeMixin implements _StudentModel {
  const _$_StudentModel(
      {this.id,
      required this.address,
      required this.dob,
      required this.email,
      required this.last_name,
      required this.name,
      required this.student_level,
      required this.student_shirt_color,
      required this.telephone,
      required this.instructor,
      this.created,
      this.updated,
      this.collectionId,
      this.collectionName,
      this.avatar,
      this.certificates,
      this.certificates_type,
      this.certificates_size,
      this.certificates_date,
      this.contracts,
      this.contracts_type,
      this.contracts_size,
      this.contracts_date,
      this.notes});

  factory _$_StudentModel.fromJson(Map<String, dynamic> json) =>
      _$$_StudentModelFromJson(json);

  @override
  final String? id;
  @override
  final String? address;
  @override
  final DateTime? dob;
  @override
  final String email;
  @override
  final String last_name;
  @override
  final String name;
  @override
  final StudentLevelModel student_level;
  @override
  final StudentShirtColorModel student_shirt_color;
  @override
  final String telephone;
  @override
  final bool instructor;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final String? avatar;
  @override
  final String? certificates;
  @override
  final String? certificates_type;
  @override
  final int? certificates_size;
  @override
  final DateTime? certificates_date;
  @override
  final String? contracts;
  @override
  final String? contracts_type;
  @override
  final int? contracts_size;
  @override
  final DateTime? contracts_date;
  @override
  final String? notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentModel(id: $id, address: $address, dob: $dob, email: $email, last_name: $last_name, name: $name, student_level: $student_level, student_shirt_color: $student_shirt_color, telephone: $telephone, instructor: $instructor, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, avatar: $avatar, certificates: $certificates, certificates_type: $certificates_type, certificates_size: $certificates_size, certificates_date: $certificates_date, contracts: $contracts, contracts_type: $contracts_type, contracts_size: $contracts_size, contracts_date: $contracts_date, notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('dob', dob))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('last_name', last_name))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('student_level', student_level))
      ..add(DiagnosticsProperty('student_shirt_color', student_shirt_color))
      ..add(DiagnosticsProperty('telephone', telephone))
      ..add(DiagnosticsProperty('instructor', instructor))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('certificates', certificates))
      ..add(DiagnosticsProperty('certificates_type', certificates_type))
      ..add(DiagnosticsProperty('certificates_size', certificates_size))
      ..add(DiagnosticsProperty('certificates_date', certificates_date))
      ..add(DiagnosticsProperty('contracts', contracts))
      ..add(DiagnosticsProperty('contracts_type', contracts_type))
      ..add(DiagnosticsProperty('contracts_size', contracts_size))
      ..add(DiagnosticsProperty('contracts_date', contracts_date))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.student_level, student_level) ||
                other.student_level == student_level) &&
            (identical(other.student_shirt_color, student_shirt_color) ||
                other.student_shirt_color == student_shirt_color) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.instructor, instructor) ||
                other.instructor == instructor) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.certificates, certificates) ||
                other.certificates == certificates) &&
            (identical(other.certificates_type, certificates_type) ||
                other.certificates_type == certificates_type) &&
            (identical(other.certificates_size, certificates_size) ||
                other.certificates_size == certificates_size) &&
            (identical(other.certificates_date, certificates_date) ||
                other.certificates_date == certificates_date) &&
            (identical(other.contracts, contracts) ||
                other.contracts == contracts) &&
            (identical(other.contracts_type, contracts_type) ||
                other.contracts_type == contracts_type) &&
            (identical(other.contracts_size, contracts_size) ||
                other.contracts_size == contracts_size) &&
            (identical(other.contracts_date, contracts_date) ||
                other.contracts_date == contracts_date) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        address,
        dob,
        email,
        last_name,
        name,
        student_level,
        student_shirt_color,
        telephone,
        instructor,
        created,
        updated,
        collectionId,
        collectionName,
        avatar,
        certificates,
        certificates_type,
        certificates_size,
        certificates_date,
        contracts,
        contracts_type,
        contracts_size,
        contracts_date,
        notes
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentModelCopyWith<_$_StudentModel> get copyWith =>
      __$$_StudentModelCopyWithImpl<_$_StudentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentModelToJson(
      this,
    );
  }
}

abstract class _StudentModel implements StudentModel {
  const factory _StudentModel(
      {final String? id,
      required final String? address,
      required final DateTime? dob,
      required final String email,
      required final String last_name,
      required final String name,
      required final StudentLevelModel student_level,
      required final StudentShirtColorModel student_shirt_color,
      required final String telephone,
      required final bool instructor,
      final DateTime? created,
      final DateTime? updated,
      final String? collectionId,
      final String? collectionName,
      final String? avatar,
      final String? certificates,
      final String? certificates_type,
      final int? certificates_size,
      final DateTime? certificates_date,
      final String? contracts,
      final String? contracts_type,
      final int? contracts_size,
      final DateTime? contracts_date,
      final String? notes}) = _$_StudentModel;

  factory _StudentModel.fromJson(Map<String, dynamic> json) =
      _$_StudentModel.fromJson;

  @override
  String? get id;
  @override
  String? get address;
  @override
  DateTime? get dob;
  @override
  String get email;
  @override
  String get last_name;
  @override
  String get name;
  @override
  StudentLevelModel get student_level;
  @override
  StudentShirtColorModel get student_shirt_color;
  @override
  String get telephone;
  @override
  bool get instructor;
  @override
  DateTime? get created;
  @override
  DateTime? get updated;
  @override
  String? get collectionId;
  @override
  String? get collectionName;
  @override
  String? get avatar;
  @override
  String? get certificates;
  @override
  String? get certificates_type;
  @override
  int? get certificates_size;
  @override
  DateTime? get certificates_date;
  @override
  String? get contracts;
  @override
  String? get contracts_type;
  @override
  int? get contracts_size;
  @override
  DateTime? get contracts_date;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$_StudentModelCopyWith<_$_StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
