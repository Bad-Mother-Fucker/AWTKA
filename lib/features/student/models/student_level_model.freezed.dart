// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentLevelModel _$StudentLevelModelFromJson(Map<String, dynamic> json) {
  return _StudentLevelModel.fromJson(json);
}

/// @nodoc
mixin _$StudentLevelModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentLevelModelCopyWith<StudentLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentLevelModelCopyWith<$Res> {
  factory $StudentLevelModelCopyWith(
          StudentLevelModel value, $Res Function(StudentLevelModel) then) =
      _$StudentLevelModelCopyWithImpl<$Res, StudentLevelModel>;
  @useResult
  $Res call({String? id, String? name, int? sort});
}

/// @nodoc
class _$StudentLevelModelCopyWithImpl<$Res, $Val extends StudentLevelModel>
    implements $StudentLevelModelCopyWith<$Res> {
  _$StudentLevelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentLevelModelCopyWith<$Res>
    implements $StudentLevelModelCopyWith<$Res> {
  factory _$$_StudentLevelModelCopyWith(_$_StudentLevelModel value,
          $Res Function(_$_StudentLevelModel) then) =
      __$$_StudentLevelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, int? sort});
}

/// @nodoc
class __$$_StudentLevelModelCopyWithImpl<$Res>
    extends _$StudentLevelModelCopyWithImpl<$Res, _$_StudentLevelModel>
    implements _$$_StudentLevelModelCopyWith<$Res> {
  __$$_StudentLevelModelCopyWithImpl(
      _$_StudentLevelModel _value, $Res Function(_$_StudentLevelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$_StudentLevelModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentLevelModel
    with DiagnosticableTreeMixin
    implements _StudentLevelModel {
  const _$_StudentLevelModel({this.id, this.name, this.sort});

  factory _$_StudentLevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_StudentLevelModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? sort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentLevelModel(id: $id, name: $name, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentLevelModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentLevelModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentLevelModelCopyWith<_$_StudentLevelModel> get copyWith =>
      __$$_StudentLevelModelCopyWithImpl<_$_StudentLevelModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentLevelModelToJson(
      this,
    );
  }
}

abstract class _StudentLevelModel implements StudentLevelModel {
  const factory _StudentLevelModel(
      {final String? id,
      final String? name,
      final int? sort}) = _$_StudentLevelModel;

  factory _StudentLevelModel.fromJson(Map<String, dynamic> json) =
      _$_StudentLevelModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get sort;
  @override
  @JsonKey(ignore: true)
  _$$_StudentLevelModelCopyWith<_$_StudentLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
