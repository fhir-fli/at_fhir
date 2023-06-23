// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_fhir_notify.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$atFhirNotifyHash() => r'30aac1fe3f8179d9b295b23f91fadfee2cd0c989';

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

abstract class _$AtFhirNotify
    extends BuildlessAutoDisposeAsyncNotifier<NotificationResult> {
  late final AtFhirNotification atFhirNotification;
  late final String atSign;

  Future<NotificationResult> build(
    AtFhirNotification atFhirNotification,
    String atSign,
  );
}

/// Provider to notify a specific atSign
///
/// Copied from [AtFhirNotify].
@ProviderFor(AtFhirNotify)
const atFhirNotifyProvider = AtFhirNotifyFamily();

/// Provider to notify a specific atSign
///
/// Copied from [AtFhirNotify].
class AtFhirNotifyFamily extends Family<AsyncValue<NotificationResult>> {
  /// Provider to notify a specific atSign
  ///
  /// Copied from [AtFhirNotify].
  const AtFhirNotifyFamily();

  /// Provider to notify a specific atSign
  ///
  /// Copied from [AtFhirNotify].
  AtFhirNotifyProvider call(
    AtFhirNotification atFhirNotification,
    String atSign,
  ) {
    return AtFhirNotifyProvider(
      atFhirNotification,
      atSign,
    );
  }

  @override
  AtFhirNotifyProvider getProviderOverride(
    covariant AtFhirNotifyProvider provider,
  ) {
    return call(
      provider.atFhirNotification,
      provider.atSign,
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
  String? get name => r'atFhirNotifyProvider';
}

/// Provider to notify a specific atSign
///
/// Copied from [AtFhirNotify].
class AtFhirNotifyProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AtFhirNotify, NotificationResult> {
  /// Provider to notify a specific atSign
  ///
  /// Copied from [AtFhirNotify].
  AtFhirNotifyProvider(
    this.atFhirNotification,
    this.atSign,
  ) : super.internal(
          () => AtFhirNotify()
            ..atFhirNotification = atFhirNotification
            ..atSign = atSign,
          from: atFhirNotifyProvider,
          name: r'atFhirNotifyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atFhirNotifyHash,
          dependencies: AtFhirNotifyFamily._dependencies,
          allTransitiveDependencies:
              AtFhirNotifyFamily._allTransitiveDependencies,
        );

  final AtFhirNotification atFhirNotification;
  final String atSign;

  @override
  bool operator ==(Object other) {
    return other is AtFhirNotifyProvider &&
        other.atFhirNotification == atFhirNotification &&
        other.atSign == atSign;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, atFhirNotification.hashCode);
    hash = _SystemHash.combine(hash, atSign.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<NotificationResult> runNotifierBuild(
    covariant AtFhirNotify notifier,
  ) {
    return notifier.build(
      atFhirNotification,
      atSign,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
