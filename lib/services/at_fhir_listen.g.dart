// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_fhir_listen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$atFhirListenHash() => r'c8c93c4d0219609b882194b7872c5de451ba3bc9';

/// Provider to listen to any changes of any FHIR resources
///
/// Copied from [AtFhirListen].
@ProviderFor(AtFhirListen)
final atFhirListenProvider =
    AutoDisposeStreamNotifierProvider<AtFhirListen, AtNotification>.internal(
  AtFhirListen.new,
  name: r'atFhirListenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$atFhirListenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AtFhirListen = AutoDisposeStreamNotifier<AtNotification>;
String _$atFhirResourceTypeListenHash() =>
    r'2e93f9cab735c03139eb71c77f89e17a3715c2c8';

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

abstract class _$AtFhirResourceTypeListen
    extends BuildlessAutoDisposeStreamNotifier<AtNotification> {
  late final String resourceType;

  Stream<AtNotification> build(
    String resourceType,
  );
}

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtFhirResourceTypeListen].
@ProviderFor(AtFhirResourceTypeListen)
const atFhirResourceTypeListenProvider = AtFhirResourceTypeListenFamily();

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtFhirResourceTypeListen].
class AtFhirResourceTypeListenFamily
    extends Family<AsyncValue<AtNotification>> {
  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtFhirResourceTypeListen].
  const AtFhirResourceTypeListenFamily();

  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtFhirResourceTypeListen].
  AtFhirResourceTypeListenProvider call(
    String resourceType,
  ) {
    return AtFhirResourceTypeListenProvider(
      resourceType,
    );
  }

  @override
  AtFhirResourceTypeListenProvider getProviderOverride(
    covariant AtFhirResourceTypeListenProvider provider,
  ) {
    return call(
      provider.resourceType,
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
  String? get name => r'atFhirResourceTypeListenProvider';
}

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtFhirResourceTypeListen].
class AtFhirResourceTypeListenProvider
    extends AutoDisposeStreamNotifierProviderImpl<AtFhirResourceTypeListen,
        AtNotification> {
  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtFhirResourceTypeListen].
  AtFhirResourceTypeListenProvider(
    this.resourceType,
  ) : super.internal(
          () => AtFhirResourceTypeListen()..resourceType = resourceType,
          from: atFhirResourceTypeListenProvider,
          name: r'atFhirResourceTypeListenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atFhirResourceTypeListenHash,
          dependencies: AtFhirResourceTypeListenFamily._dependencies,
          allTransitiveDependencies:
              AtFhirResourceTypeListenFamily._allTransitiveDependencies,
        );

  final String resourceType;

  @override
  bool operator ==(Object other) {
    return other is AtFhirResourceTypeListenProvider &&
        other.resourceType == resourceType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceType.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Stream<AtNotification> runNotifierBuild(
    covariant AtFhirResourceTypeListen notifier,
  ) {
    return notifier.build(
      resourceType,
    );
  }
}

String _$atFhirSingleResourceListenHash() =>
    r'efd47daebdd0f3c1f63d5e45146ba23f318027cb';

abstract class _$AtFhirSingleResourceListen
    extends BuildlessAutoDisposeStreamNotifier<AtNotification> {
  late final String resourceType;
  late final String id;

  Stream<AtNotification> build(
    String resourceType,
    String id,
  );
}

/// Provider to listen to any changes to a specific FHIR resource
///
/// Copied from [AtFhirSingleResourceListen].
@ProviderFor(AtFhirSingleResourceListen)
const atFhirSingleResourceListenProvider = AtFhirSingleResourceListenFamily();

/// Provider to listen to any changes to a specific FHIR resource
///
/// Copied from [AtFhirSingleResourceListen].
class AtFhirSingleResourceListenFamily
    extends Family<AsyncValue<AtNotification>> {
  /// Provider to listen to any changes to a specific FHIR resource
  ///
  /// Copied from [AtFhirSingleResourceListen].
  const AtFhirSingleResourceListenFamily();

  /// Provider to listen to any changes to a specific FHIR resource
  ///
  /// Copied from [AtFhirSingleResourceListen].
  AtFhirSingleResourceListenProvider call(
    String resourceType,
    String id,
  ) {
    return AtFhirSingleResourceListenProvider(
      resourceType,
      id,
    );
  }

  @override
  AtFhirSingleResourceListenProvider getProviderOverride(
    covariant AtFhirSingleResourceListenProvider provider,
  ) {
    return call(
      provider.resourceType,
      provider.id,
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
  String? get name => r'atFhirSingleResourceListenProvider';
}

/// Provider to listen to any changes to a specific FHIR resource
///
/// Copied from [AtFhirSingleResourceListen].
class AtFhirSingleResourceListenProvider
    extends AutoDisposeStreamNotifierProviderImpl<AtFhirSingleResourceListen,
        AtNotification> {
  /// Provider to listen to any changes to a specific FHIR resource
  ///
  /// Copied from [AtFhirSingleResourceListen].
  AtFhirSingleResourceListenProvider(
    this.resourceType,
    this.id,
  ) : super.internal(
          () => AtFhirSingleResourceListen()
            ..resourceType = resourceType
            ..id = id,
          from: atFhirSingleResourceListenProvider,
          name: r'atFhirSingleResourceListenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atFhirSingleResourceListenHash,
          dependencies: AtFhirSingleResourceListenFamily._dependencies,
          allTransitiveDependencies:
              AtFhirSingleResourceListenFamily._allTransitiveDependencies,
        );

  final String resourceType;
  final String id;

  @override
  bool operator ==(Object other) {
    return other is AtFhirSingleResourceListenProvider &&
        other.resourceType == resourceType &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Stream<AtNotification> runNotifierBuild(
    covariant AtFhirSingleResourceListen notifier,
  ) {
    return notifier.build(
      resourceType,
      id,
    );
  }
}

String _$atListenHash() => r'42f6ec80cc0b040111e8560e4ba62945f38e0270';

/// Listens to All Changes
///
/// Copied from [AtListen].
@ProviderFor(AtListen)
final atListenProvider =
    AutoDisposeStreamNotifierProvider<AtListen, AtNotification>.internal(
  AtListen.new,
  name: r'atListenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$atListenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AtListen = AutoDisposeStreamNotifier<AtNotification>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
