import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

import '../models/student_level_model.dart';

final studentLevelRepositoryProvider = StateNotifierProvider<
    StudentLevelRepository<StudentLevelModel>,
    AsyncValue<List<StudentLevelModel>>>((ref) {
  return StudentLevelRepository<StudentLevelModel>(
    ref.read(collectionServiceProvider("student_level")),
  );
});

/// Acts as cache for loaded studentLevels
final studentLevelProvider = Provider<AsyncValue<List<StudentLevelModel>>>((ref) =>
    ref.watch(studentLevelRepositoryProvider).whenData((items) => items));

class StudentLevelRepository<T extends BaseModel>
    extends PocketbaseRepository<T> {
  StudentLevelRepository(RecordService recordService) : super(recordService) {
    getAll();
  }

  int getItemCount() => state.asData?.value.length ?? 0;

  @override
  Future<void> getAll({bool loading = true}) async {
    if (loading) state = const AsyncLoading();

    final map = await getAsMap();
    final items = map.map((e) => StudentLevelModel.fromJson(e)).toList();
    items.sort((a, b) => (a.sort ?? 0).compareTo(b.sort ?? 0));
    state = AsyncData(items as List<T>);
  }
}
