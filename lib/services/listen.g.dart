// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$atListenHash() => r'c22c505b66552b611d552f2185163b518cc272fd';

/// Provider to listen to any changes of any FHIR resources
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