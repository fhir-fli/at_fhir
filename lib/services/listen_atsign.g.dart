// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_atsign.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$atSignStreamHash() => r'd121bd614228bb8b792af689cecc4308620ff4e7';

/// Provider to listen to any changes of any FHIR resources
///
/// Copied from [AtSignStream].
@ProviderFor(AtSignStream)
final atSignStreamProvider = AutoDisposeNotifierProvider<AtSignStream,
    StreamSubscription<dynamic>>.internal(
  AtSignStream.new,
  name: r'atSignStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$atSignStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AtSignStream = AutoDisposeNotifier<StreamSubscription<dynamic>>;
String _$atSignResourceTypeStreamHash() =>
    r'73bfaa9a086429a987b521db993abe57baf8630c';

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

abstract class _$AtSignResourceTypeStream
    extends BuildlessAutoDisposeNotifier<StreamSubscription<dynamic>> {
  late final String resourceType;

  StreamSubscription<dynamic> build(
    String resourceType,
  );
}

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtSignResourceTypeStream].
@ProviderFor(AtSignResourceTypeStream)
const atSignResourceTypeStreamProvider = AtSignResourceTypeStreamFamily();

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtSignResourceTypeStream].
class AtSignResourceTypeStreamFamily
    extends Family<StreamSubscription<dynamic>> {
  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtSignResourceTypeStream].
  const AtSignResourceTypeStreamFamily();

  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtSignResourceTypeStream].
  AtSignResourceTypeStreamProvider call(
    String resourceType,
  ) {
    return AtSignResourceTypeStreamProvider(
      resourceType,
    );
  }

  @override
  AtSignResourceTypeStreamProvider getProviderOverride(
    covariant AtSignResourceTypeStreamProvider provider,
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
  String? get name => r'atSignResourceTypeStreamProvider';
}

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtSignResourceTypeStream].
class AtSignResourceTypeStreamProvider extends AutoDisposeNotifierProviderImpl<
    AtSignResourceTypeStream, StreamSubscription<dynamic>> {
  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtSignResourceTypeStream].
  AtSignResourceTypeStreamProvider(
    this.resourceType,
  ) : super.internal(
          () => AtSignResourceTypeStream()..resourceType = resourceType,
          from: atSignResourceTypeStreamProvider,
          name: r'atSignResourceTypeStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atSignResourceTypeStreamHash,
          dependencies: AtSignResourceTypeStreamFamily._dependencies,
          allTransitiveDependencies:
              AtSignResourceTypeStreamFamily._allTransitiveDependencies,
        );

  final String resourceType;

  @override
  bool operator ==(Object other) {
    return other is AtSignResourceTypeStreamProvider &&
        other.resourceType == resourceType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceType.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  StreamSubscription<dynamic> runNotifierBuild(
    covariant AtSignResourceTypeStream notifier,
  ) {
    return notifier.build(
      resourceType,
    );
  }
}

String _$atSignResourceStreamHash() =>
    r'fe07cf754d496857729b3bcf0911ad63b99f89f4';

abstract class _$AtSignResourceStream
    extends BuildlessAutoDisposeNotifier<StreamSubscription<dynamic>> {
  late final String resourceType;
  late final String id;

  StreamSubscription<dynamic> build(
    String resourceType,
    String id,
  );
}

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtSignResourceStream].
@ProviderFor(AtSignResourceStream)
const atSignResourceStreamProvider = AtSignResourceStreamFamily();

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtSignResourceStream].
class AtSignResourceStreamFamily extends Family<StreamSubscription<dynamic>> {
  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtSignResourceStream].
  const AtSignResourceStreamFamily();

  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtSignResourceStream].
  AtSignResourceStreamProvider call(
    String resourceType,
    String id,
  ) {
    return AtSignResourceStreamProvider(
      resourceType,
      id,
    );
  }

  @override
  AtSignResourceStreamProvider getProviderOverride(
    covariant AtSignResourceStreamProvider provider,
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
  String? get name => r'atSignResourceStreamProvider';
}

/// Provider to listen to any changes to FHIR resources of the specified type
///
/// Copied from [AtSignResourceStream].
class AtSignResourceStreamProvider extends AutoDisposeNotifierProviderImpl<
    AtSignResourceStream, StreamSubscription<dynamic>> {
  /// Provider to listen to any changes to FHIR resources of the specified type
  ///
  /// Copied from [AtSignResourceStream].
  AtSignResourceStreamProvider(
    this.resourceType,
    this.id,
  ) : super.internal(
          () => AtSignResourceStream()
            ..resourceType = resourceType
            ..id = id,
          from: atSignResourceStreamProvider,
          name: r'atSignResourceStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atSignResourceStreamHash,
          dependencies: AtSignResourceStreamFamily._dependencies,
          allTransitiveDependencies:
              AtSignResourceStreamFamily._allTransitiveDependencies,
        );

  final String resourceType;
  final String id;

  @override
  bool operator ==(Object other) {
    return other is AtSignResourceStreamProvider &&
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
  StreamSubscription<dynamic> runNotifierBuild(
    covariant AtSignResourceStream notifier,
  ) {
    return notifier.build(
      resourceType,
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
