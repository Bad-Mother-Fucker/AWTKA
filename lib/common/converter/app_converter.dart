import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, dynamic> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(dynamic data) =>
      data == null || data == '' ? null : DateTime.tryParse(data as String);

  @override
  String toJson(DateTime? object) => object.toString();
}
