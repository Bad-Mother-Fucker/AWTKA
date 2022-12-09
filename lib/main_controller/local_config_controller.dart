import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_config_controller.g.dart';

final getLocalConfigProvider = FutureProvider.family<String, String>(
  (ref, key) async {
    final prefs = ref.watch(sharedPreferencesProvider);
    String data = prefs.getString(key) ?? 'true';
    return data;
  },
);

@riverpod
Future<bool> setLocalConfig(
  SetLocalConfigRef ref,
  String key,
  String data,
) async {
  final prefs = ref.watch(sharedPreferencesProvider);
  await prefs.setString(key, data);
  return true;
}
