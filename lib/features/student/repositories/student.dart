import 'package:awtka/features/home/widgets/student_home_body.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

import '../models/student_model.dart';

final studentRepositoryProvider = StateNotifierProvider<
    StudentRepository<StudentModel>, AsyncValue<List<StudentModel>>>((ref) {
  final levelFilter = ref.watch(studentTierFilterProvider);

  return StudentRepository<StudentModel>(
    ref.read(collectionServiceProvider("students")),
    levelFilter: levelFilter,
  );
});

/// Acts as cache for loaded students
final studentProvider = Provider<AsyncValue<List<StudentModel>>>(
    (ref) => ref.watch(studentRepositoryProvider).whenData((items) => items));

class StudentRepository<T extends BaseModel> extends PocketbaseRepository<T> {
  StudentRepository(
    RecordService recordService, {
    required this.levelFilter,
  }) : super(recordService) {
    relations = ['student_level', 'student_shirt_color'];
    getAll();
  }

  final StudentLevelModel levelFilter;

  int getItemCount() => state.asData?.value.length ?? 0;

  @override
  Future<void> getAll({bool loading = true}) async {
    if (loading) state = const AsyncLoading();
    var filter = '';
    if (levelFilter.id != null && levelFilter.id != '-1') {
      filter += "student_level='${levelFilter.id}'";
    }
    final map = await getAsMap(
      filter: filter,
    );
    final items = map.map((e) => StudentModel.fromJson(e)).toList();
    items
        .sort((a, b) => b.updated?.compareTo(a.updated ?? DateTime.now()) ?? 0);
    state = AsyncData(items as List<T>);
  }
}
