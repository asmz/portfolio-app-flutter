// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tumblr_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tumblrApiHash() => r'4f39a0414fa910c8f83d8e99f83e6038181f068d';

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

/// See also [tumblrApi].
@ProviderFor(tumblrApi)
const tumblrApiProvider = TumblrApiFamily();

/// See also [tumblrApi].
class TumblrApiFamily extends Family<AsyncValue<PostResponseBody>> {
  /// See also [tumblrApi].
  const TumblrApiFamily();

  /// See also [tumblrApi].
  TumblrApiProvider call(PostRequest request) {
    return TumblrApiProvider(request);
  }

  @override
  TumblrApiProvider getProviderOverride(covariant TumblrApiProvider provider) {
    return call(provider.request);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tumblrApiProvider';
}

/// See also [tumblrApi].
class TumblrApiProvider extends AutoDisposeFutureProvider<PostResponseBody> {
  /// See also [tumblrApi].
  TumblrApiProvider(PostRequest request)
    : this._internal(
        (ref) => tumblrApi(ref as TumblrApiRef, request),
        from: tumblrApiProvider,
        name: r'tumblrApiProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$tumblrApiHash,
        dependencies: TumblrApiFamily._dependencies,
        allTransitiveDependencies: TumblrApiFamily._allTransitiveDependencies,
        request: request,
      );

  TumblrApiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final PostRequest request;

  @override
  Override overrideWith(
    FutureOr<PostResponseBody> Function(TumblrApiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TumblrApiProvider._internal(
        (ref) => create(ref as TumblrApiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PostResponseBody> createElement() {
    return _TumblrApiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TumblrApiProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TumblrApiRef on AutoDisposeFutureProviderRef<PostResponseBody> {
  /// The parameter `request` of this provider.
  PostRequest get request;
}

class _TumblrApiProviderElement
    extends AutoDisposeFutureProviderElement<PostResponseBody>
    with TumblrApiRef {
  _TumblrApiProviderElement(super.provider);

  @override
  PostRequest get request => (origin as TumblrApiProvider).request;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
