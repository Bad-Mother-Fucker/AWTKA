// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_config_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $setLocalConfigHash() => r'a35911d2314d56673bdcaec76189e2afb8c0b473';

/// See also [setLocalConfig].
class SetLocalConfigProvider extends AutoDisposeFutureProvider<bool> {
  SetLocalConfigProvider(
    this.key,
    this.data,
  ) : super(
          (ref) => setLocalConfig(
            ref,
            key,
            data,
          ),
          from: setLocalConfigProvider,
          name: r'setLocalConfigProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $setLocalConfigHash,
        );

  final String key;
  final String data;

  @override
  bool operator ==(Object other) {
    return other is SetLocalConfigProvider &&
        other.key == key &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef SetLocalConfigRef = AutoDisposeFutureProviderRef<bool>;

/// See also [setLocalConfig].
final setLocalConfigProvider = SetLocalConfigFamily();

class SetLocalConfigFamily extends Family<AsyncValue<bool>> {
  SetLocalConfigFamily();

  SetLocalConfigProvider call(
    String key,
    String data,
  ) {
    return SetLocalConfigProvider(
      key,
      data,
    );
  }

  @override
  AutoDisposeFutureProvider<bool> getProviderOverride(
    covariant SetLocalConfigProvider provider,
  ) {
    return call(
      provider.key,
      provider.data,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'setLocalConfigProvider';
}
