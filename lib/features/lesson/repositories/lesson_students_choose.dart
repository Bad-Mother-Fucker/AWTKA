import 'package:awtka/features/student/models/student_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

final studentsChooseOptionRepositoryProvider = StateNotifierProvider<
    StudentRepository<StudentModel>, AsyncValue<List<StudentModel>>>((ref) {
  return StudentRepository<StudentModel>(
    ref.read(collectionServiceProvider("students")),
  );
});

/// Acts as cache for loaded students
final studentsChooseOptionProvider = Provider<AsyncValue<List<StudentModel>>>(
    (ref) => ref
        .watch(studentsChooseOptionRepositoryProvider)
        .whenData((items) => items));

class StudentRepository<T extends BaseModel> extends PocketbaseRepository<T> {
  StudentRepository(
    RecordService recordService,
  ) : super(recordService) {
    relations = ['student_level', 'student_shirt_color'];
    getAll();
  }

  int getItemCount() => state.asData?.value.length ?? 0;

  @override
  Future<void> getAll({bool loading = true}) async {
    if (loading) state = const AsyncLoading();

    var filter = '';
    // filter += "instructor=false";
    final map = await getAsMap(
      filter: filter,
    );
    final items = map.map((e) => StudentModel.fromJson(e)).toList();
    items
        .sort((a, b) => b.updated?.compareTo(a.updated ?? DateTime.now()) ?? 0);
    state = AsyncData(items as List<T>);
  }
}
