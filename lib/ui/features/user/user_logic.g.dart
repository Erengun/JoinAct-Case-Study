// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_logic.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOrdersForUserIdHash() =>
    r'c0380243a137f4255d83bf2c83e0e83afb1b26d7';

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

typedef GetOrdersForUserIdRef
    = AutoDisposeFutureProviderRef<Either<String, GetOrdersResponse>>;

/// See also [getOrdersForUserId].
@ProviderFor(getOrdersForUserId)
const getOrdersForUserIdProvider = GetOrdersForUserIdFamily();

/// See also [getOrdersForUserId].
class GetOrdersForUserIdFamily
    extends Family<AsyncValue<Either<String, GetOrdersResponse>>> {
  /// See also [getOrdersForUserId].
  const GetOrdersForUserIdFamily();

  /// See also [getOrdersForUserId].
  GetOrdersForUserIdProvider call(
    int id,
  ) {
    return GetOrdersForUserIdProvider(
      id,
    );
  }

  @override
  GetOrdersForUserIdProvider getProviderOverride(
    covariant GetOrdersForUserIdProvider provider,
  ) {
    return call(
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
  String? get name => r'getOrdersForUserIdProvider';
}

/// See also [getOrdersForUserId].
class GetOrdersForUserIdProvider
    extends AutoDisposeFutureProvider<Either<String, GetOrdersResponse>> {
  /// See also [getOrdersForUserId].
  GetOrdersForUserIdProvider(
    this.id,
  ) : super.internal(
          (ref) => getOrdersForUserId(
            ref,
            id,
          ),
          from: getOrdersForUserIdProvider,
          name: r'getOrdersForUserIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOrdersForUserIdHash,
          dependencies: GetOrdersForUserIdFamily._dependencies,
          allTransitiveDependencies:
              GetOrdersForUserIdFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is GetOrdersForUserIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$fetchCategoriesHash() => r'178b4339f647f4c4bb4e46f9528503a91170c684';

/// See also [fetchCategories].
@ProviderFor(fetchCategories)
final fetchCategoriesProvider =
    AutoDisposeFutureProvider<Either<String, GetCategoriesResponse>>.internal(
  fetchCategories,
  name: r'fetchCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchCategoriesRef
    = AutoDisposeFutureProviderRef<Either<String, GetCategoriesResponse>>;
String _$fetchProductsHash() => r'9d14f0b0caaaddbe3f3c9a86d6cf8da376d10240';

/// See also [fetchProducts].
@ProviderFor(fetchProducts)
final fetchProductsProvider =
    AutoDisposeFutureProvider<Either<String, GetProductsResponse>>.internal(
  fetchProducts,
  name: r'fetchProductsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchProductsRef
    = AutoDisposeFutureProviderRef<Either<String, GetProductsResponse>>;
String _$fetchUserHash() => r'af2aeb74deb79a094aea43d9d0fc95d3b48affa6';

/// See also [fetchUser].
@ProviderFor(fetchUser)
final fetchUserProvider = AutoDisposeFutureProvider<User?>.internal(
  fetchUser,
  name: r'fetchUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchUserRef = AutoDisposeFutureProviderRef<User?>;
String _$userLogicHash() => r'a980bfab4e8e2c2b4d8981843d311a4581a7a25d';

/// See also [UserLogic].
@ProviderFor(UserLogic)
final userLogicProvider =
    AutoDisposeNotifierProvider<UserLogic, UserUIModel>.internal(
  UserLogic.new,
  name: r'userLogicProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userLogicHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserLogic = AutoDisposeNotifier<UserUIModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
