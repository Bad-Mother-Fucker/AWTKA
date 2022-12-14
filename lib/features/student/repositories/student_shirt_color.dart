import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

import '../models/student_shirt_color_model.dart';

final studentShirtColorRepositoryProvider = StateNotifierProvider<
    StudentShirtColorRepository<StudentShirtColorModel>,
    AsyncValue<List<StudentShirtColorModel>>>((ref) {
  return StudentShirtColorRepository<StudentShirtColorModel>(
    ref.read(collectionServiceProvider("student_shirt_color")),
  );
});

/// Acts as cache for loaded studentShirtColors
final studentShirtColorProvider =
    Provider<AsyncValue<List<StudentShirtColorModel>>>((ref) => ref
        .watch(studentShirtColorRepositoryProvider)
        .whenData((items) => items));

class StudentShirtColorRepository<T extends BaseModel>
    extends PocketbaseRepository<T> {
  StudentShirtColorRepository(RecordService recordService)
      : super(recordService) {
    getAll();
  }

  int getItemCount() => state.asData?.value.length ?? 0;

  @override
  Future<void> getAll({bool loading = true}) async {
    if (loading) state = const AsyncLoading();

    final map = await getAsMap();
    final items = map.map((e) => StudentShirtColorModel.fromJson(e)).toList();
    items.sort((a, b) => (a.sort ?? 0).compareTo(b.sort ?? 0));
    state = AsyncData(items as List<T>);
  }
}
