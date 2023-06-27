// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_fhir_listen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$atFhirListenHash() => r'6c729b16a6b9797e6633279317fd1d89bfa45787';

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

abstract class _$AtFhirListen
    extends BuildlessStreamNotifier<AtFhirNotification> {
  late final AtClient atClient;

  Stream<AtFhirNotification> build(
    AtClient atClient,
  );
}

/// Listens to All Changes
///
/// Copied from [AtFhirListen].
@ProviderFor(AtFhirListen)
const atFhirListenProvider = AtFhirListenFamily();

/// Listens to All Changes
///
/// Copied from [AtFhirListen].
class AtFhirListenFamily extends Family<AsyncValue<AtFhirNotification>> {
  /// Listens to All Changes
  ///
  /// Copied from [AtFhirListen].
  const AtFhirListenFamily();

  /// Listens to All Changes
  ///
  /// Copied from [AtFhirListen].
  AtFhirListenProvider call(
    AtClient atClient,
  ) {
    return AtFhirListenProvider(
      atClient,
    );
  }

  @override
  AtFhirListenProvider getProviderOverride(
    covariant AtFhirListenProvider provider,
  ) {
    return call(
      provider.atClient,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'atFhirListenProvider';
}

/// Listens to All Changes
///
/// Copied from [AtFhirListen].
class AtFhirListenProvider
    extends StreamNotifierProviderImpl<AtFhirListen, AtFhirNotification> {
  /// Listens to All Changes
  ///
  /// Copied from [AtFhirListen].
  AtFhirListenProvider(
    this.atClient,
  ) : super.internal(
          () => AtFhirListen()..atClient = atClient,
          from: atFhirListenProvider,
          name: r'atFhirListenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atFhirListenHash,
          dependencies: AtFhirListenFamily._dependencies,
          allTransitiveDependencies:
              AtFhirListenFamily._allTransitiveDependencies,
        );

  final AtClient atClient;

  @override
  bool operator ==(Object other) {
    return other is AtFhirListenProvider && other.atClient == atClient;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, atClient.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Stream<AtFhirNotification> runNotifierBuild(
    covariant AtFhirListen notifier,
  ) {
    return notifier.build(
      atClient,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
