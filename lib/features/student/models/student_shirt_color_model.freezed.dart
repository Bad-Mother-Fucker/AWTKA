// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_shirt_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentShirtColorModel _$StudentShirtColorModelFromJson(
    Map<String, dynamic> json) {
  return _StudentShirtColorModel.fromJson(json);
}

/// @nodoc
mixin _$StudentShirtColorModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentShirtColorModelCopyWith<StudentShirtColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentShirtColorModelCopyWith<$Res> {
  factory $StudentShirtColorModelCopyWith(StudentShirtColorModel value,
          $Res Function(StudentShirtColorModel) then) =
      _$StudentShirtColorModelCopyWithImpl<$Res, StudentShirtColorModel>;
  @useResult
  $Res call({String? id, String? name, String? color, int? sort});
}

/// @nodoc
class _$StudentShirtColorModelCopyWithImpl<$Res,
        $Val extends StudentShirtColorModel>
    implements $StudentShirtColorModelCopyWith<$Res> {
  _$StudentShirtColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentShirtColorModelCopyWith<$Res>
    implements $StudentShirtColorModelCopyWith<$Res> {
  factory _$$_StudentShirtColorModelCopyWith(_$_StudentShirtColorModel value,
          $Res Function(_$_StudentShirtColorModel) then) =
      __$$_StudentShirtColorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? color, int? sort});
}

/// @nodoc
class __$$_StudentShirtColorModelCopyWithImpl<$Res>
    extends _$StudentShirtColorModelCopyWithImpl<$Res,
        _$_StudentShirtColorModel>
    implements _$$_StudentShirtColorModelCopyWith<$Res> {
  __$$_StudentShirtColorModelCopyWithImpl(_$_StudentShirtColorModel _value,
      $Res Function(_$_StudentShirtColorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$_StudentShirtColorModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
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
class _$_StudentShirtColorModel
    with DiagnosticableTreeMixin
    implements _StudentShirtColorModel {
  const _$_StudentShirtColorModel({this.id, this.name, this.color, this.sort});

  factory _$_StudentShirtColorModel.fromJson(Map<String, dynamic> json) =>
      _$$_StudentShirtColorModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? color;
  @override
  final int? sort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentShirtColorModel(id: $id, name: $name, color: $color, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentShirtColorModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentShirtColorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentShirtColorModelCopyWith<_$_StudentShirtColorModel> get copyWith =>
      __$$_StudentShirtColorModelCopyWithImpl<_$_StudentShirtColorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentShirtColorModelToJson(
      this,
    );
  }
}

abstract class _StudentShirtColorModel implements StudentShirtColorModel {
  const factory _StudentShirtColorModel(
      {final String? id,
      final String? name,
      final String? color,
      final int? sort}) = _$_StudentShirtColorModel;

  factory _StudentShirtColorModel.fromJson(Map<String, dynamic> json) =
      _$_StudentShirtColorModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get color;
  @override
  int? get sort;
  @override
  @JsonKey(ignore: true)
  _$$_StudentShirtColorModelCopyWith<_$_StudentShirtColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
