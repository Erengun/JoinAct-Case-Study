// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_logic.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOrdersForUserIdHash() =>
    r'105107d993dce6b6a52637bd10a5bb9c340c4912';

/// Riverpod Providers:
/// The next section consists of several asynchronous functions annotated with @riverpod.
/// These are Riverpod providers, which encapsulate pieces of state and
/// allow widgets to listen to that state codewithandrea.com.
///
/// Copied from [getOrdersForUserId].
@ProviderFor(getOrdersForUserId)
final getOrdersForUserIdProvider =
    AutoDisposeFutureProvider<Either<String, GetOrdersResponse>>.internal(
  getOrdersForUserId,
  name: r'getOrdersForUserIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getOrdersForUserIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetOrdersForUserIdRef
    = AutoDisposeFutureProviderRef<Either<String, GetOrdersResponse>>;
String _$fetchCategoriesHash() => r'178b4339f647f4c4bb4e46f9528503a91170c684';

/// In the above code, getOrdersForUserId is a provider that fetches orders for a specific user from an OrderRepository.
/// It uses the watch method from Riverpod to listen to a provider and react to its changes.
/// This method returns a Future<Either<String, GetOrdersResponse>>,
/// which means it will eventually return either a string (representing an error) or a GetOrdersResponse object
///
/// Copied from [fetchCategories].
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
String _$userLogicHash() => r'02a881b5dcf888b678423cffbcf50984b82340a2';

/// UserLogic Class:
/// The UserLogic class extends the generated _$UserLogic class and contains the state and business logic for the user.
/// It uses a GetStoreHelper object to retrieve the user data and uses various methods to update its state.
///
/// Copied from [UserLogic].
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
