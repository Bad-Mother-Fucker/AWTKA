// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

/// @nodoc
mixin _$LessonModel {
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<StudentRelationModel>? get instructors =>
      throw _privateConstructorUsedError;
  StudentLevelModel get level => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  bool? get private => throw _privateConstructorUsedError;
  List<StudentRelationModel>? get students =>
      throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonModelCopyWith<LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res, LessonModel>;
  @useResult
  $Res call(
      {String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime date,
      String? id,
      List<StudentRelationModel>? instructors,
      StudentLevelModel level,
      String name,
      String? note,
      bool? private,
      List<StudentRelationModel>? students,
      DateTime? updated});

  $StudentLevelModelCopyWith<$Res> get level;
}

/// @nodoc
class _$LessonModelCopyWithImpl<$Res, $Val extends LessonModel>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? date = null,
    Object? id = freezed,
    Object? instructors = freezed,
    Object? level = null,
    Object? name = null,
    Object? note = freezed,
    Object? private = freezed,
    Object? students = freezed,
    Object? updated = freezed,
  }) {
    return _then(_value.copyWith(
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instructors: freezed == instructors
          ? _value.instructors
          : instructors // ignore: cast_nullable_to_non_nullable
              as List<StudentRelationModel>?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as StudentLevelModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentRelationModel>?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentLevelModelCopyWith<$Res> get level {
    return $StudentLevelModelCopyWith<$Res>(_value.level, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LessonModelCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$$_LessonModelCopyWith(
          _$_LessonModel value, $Res Function(_$_LessonModel) then) =
      __$$_LessonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime date,
      String? id,
      List<StudentRelationModel>? instructors,
      StudentLevelModel level,
      String name,
      String? note,
      bool? private,
      List<StudentRelationModel>? students,
      DateTime? updated});

  @override
  $StudentLevelModelCopyWith<$Res> get level;
}

/// @nodoc
class __$$_LessonModelCopyWithImpl<$Res>
    extends _$LessonModelCopyWithImpl<$Res, _$_LessonModel>
    implements _$$_LessonModelCopyWith<$Res> {
  __$$_LessonModelCopyWithImpl(
      _$_LessonModel _value, $Res Function(_$_LessonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? date = null,
    Object? id = freezed,
    Object? instructors = freezed,
    Object? level = null,
    Object? name = null,
    Object? note = freezed,
    Object? private = freezed,
    Object? students = freezed,
    Object? updated = freezed,
  }) {
    return _then(_$_LessonModel(
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instructors: freezed == instructors
          ? _value._instructors
          : instructors // ignore: cast_nullable_to_non_nullable
              as List<StudentRelationModel>?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as StudentLevelModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      students: freezed == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentRelationModel>?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonModel implements _LessonModel {
  const _$_LessonModel(
      {required this.collectionId,
      required this.collectionName,
      required this.created,
      required this.date,
      required this.id,
      required final List<StudentRelationModel>? instructors,
      required this.level,
      required this.name,
      required this.note,
      required this.private,
      required final List<StudentRelationModel>? students,
      required this.updated})
      : _instructors = instructors,
        _students = students;

  factory _$_LessonModel.fromJson(Map<String, dynamic> json) =>
      _$$_LessonModelFromJson(json);

  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final DateTime? created;
  @override
  final DateTime date;
  @override
  final String? id;
  final List<StudentRelationModel>? _instructors;
  @override
  List<StudentRelationModel>? get instructors {
    final value = _instructors;
    if (value == null) return null;
    if (_instructors is EqualUnmodifiableListView) return _instructors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final StudentLevelModel level;
  @override
  final String name;
  @override
  final String? note;
  @override
  final bool? private;
  final List<StudentRelationModel>? _students;
  @override
  List<StudentRelationModel>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? updated;

  @override
  String toString() {
    return 'LessonModel(collectionId: $collectionId, collectionName: $collectionName, created: $created, date: $date, id: $id, instructors: $instructors, level: $level, name: $name, note: $note, private: $private, students: $students, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonModel &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._instructors, _instructors) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.private, private) || other.private == private) &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collectionId,
      collectionName,
      created,
      date,
      id,
      const DeepCollectionEquality().hash(_instructors),
      level,
      name,
      note,
      private,
      const DeepCollectionEquality().hash(_students),
      updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      __$$_LessonModelCopyWithImpl<_$_LessonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonModelToJson(
      this,
    );
  }
}

abstract class _LessonModel implements LessonModel {
  const factory _LessonModel(
      {required final String? collectionId,
      required final String? collectionName,
      required final DateTime? created,
      required final DateTime date,
      required final String? id,
      required final List<StudentRelationModel>? instructors,
      required final StudentLevelModel level,
      required final String name,
      required final String? note,
      required final bool? private,
      required final List<StudentRelationModel>? students,
      required final DateTime? updated}) = _$_LessonModel;

  factory _LessonModel.fromJson(Map<String, dynamic> json) =
      _$_LessonModel.fromJson;

  @override
  String? get collectionId;
  @override
  String? get collectionName;
  @override
  DateTime? get created;
  @override
  DateTime get date;
  @override
  String? get id;
  @override
  List<StudentRelationModel>? get instructors;
  @override
  StudentLevelModel get level;
  @override
  String get name;
  @override
  String? get note;
  @override
  bool? get private;
  @override
  List<StudentRelationModel>? get students;
  @override
  DateTime? get updated;
  @override
  @JsonKey(ignore: true)
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
