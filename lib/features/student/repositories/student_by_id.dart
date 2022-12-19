import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

import '../models/student_model.dart';

final currectStudentIdProvider = StateProvider<String?>((ref) {
  return null;
});

final studentByIdRepositoryProvider =
    StateNotifierProvider<StudentRepositoryById, AsyncValue>(
  (ref) {
    final studentId = ref.read(currectStudentIdProvider);

    return StudentRepositoryById(
      recordService: ref.read(collectionServiceProvider("students")),
      studentId: studentId,
      relations: ['student_level', 'student_shirt_color'],
    );
  },
);

/// Acts as cache for loaded students
final studentByIdProvider = Provider<AsyncValue<StudentModel>>(
  (ref) => ref.watch(studentByIdRepositoryProvider).whenData((items) => items),
);

class StudentRepositoryById extends StateNotifier<AsyncValue<StudentModel?>> {
  StudentRepositoryById({
    required this.recordService,
    required this.studentId,
    required this.relations,
  }) : super(const AsyncValue.loading()) {
    getById();
  }
  final RecordService recordService;
  final String? studentId;
  final List<String>? relations;

  Future<void> getById() async {
    if (studentId == null) return;
    state = const AsyncLoading();

    final data = await recordService.getOne(
      studentId!,
      expand: relations?.join(","),
    );

    final map = JsonConverter.toBaseModelJson(data, relations: relations);

    final item = StudentModel.fromJson(map);

    state = AsyncData(item);
  }
}
