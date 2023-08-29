// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_page_logic.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAdminCategoriesHash() =>
    r'ed84665ca4c6916a0329c9e897f694d7ab5bece0';

/// Riverpod Providers:
/// The next section consists of several asynchronous functions annotated with @riverpod.
/// These are Riverpod providers, which encapsulate pieces of state and
/// allow widgets to listen to that state codewithandrea.com.
///
/// fetchCategories, fetchProducts, and fetchCurrencies are providers that fetch categories, products, and currencies from the network.
///
/// Copied from [fetchAdminCategories].
@ProviderFor(fetchAdminCategories)
final fetchAdminCategoriesProvider =
    AutoDisposeFutureProvider<Either<String, GetCategoriesResponse>>.internal(
  fetchAdminCategories,
  name: r'fetchAdminCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchAdminCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAdminCategoriesRef
    = AutoDisposeFutureProviderRef<Either<String, GetCategoriesResponse>>;
String _$fetchAdminProductsHash() =>
    r'52f662299d1b5e54cabe8c1b37969dd7d15348ad';

/// See also [fetchAdminProducts].
@ProviderFor(fetchAdminProducts)
final fetchAdminProductsProvider =
    AutoDisposeFutureProvider<Either<String, GetProductsResponse>>.internal(
  fetchAdminProducts,
  name: r'fetchAdminProductsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchAdminProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAdminProductsRef
    = AutoDisposeFutureProviderRef<Either<String, GetProductsResponse>>;
String _$fetchAdminCurrenciesHash() =>
    r'326e8dafd09c666ca436be05bbd0c13e70dbcd2e';

/// See also [fetchAdminCurrencies].
@ProviderFor(fetchAdminCurrencies)
final fetchAdminCurrenciesProvider =
    AutoDisposeFutureProvider<Either<String, GetCurrenciesResponse>>.internal(
  fetchAdminCurrencies,
  name: r'fetchAdminCurrenciesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchAdminCurrenciesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAdminCurrenciesRef
    = AutoDisposeFutureProviderRef<Either<String, GetCurrenciesResponse>>;
String _$adminPageLogicHash() => r'9c8607cd45e9244f982a9caf29fb641dba63a42e';

/// The next three providers createCategory, removeCategory, and
/// createProduct are responsible for creating and removing categories and products.
/// They use the watch method from Riverpod to listen to a provider and react to its changes.
///
/// Copied from [AdminPageLogic].
@ProviderFor(AdminPageLogic)
final adminPageLogicProvider =
    AutoDisposeNotifierProvider<AdminPageLogic, AdminPageUIModel>.internal(
  AdminPageLogic.new,
  name: r'adminPageLogicProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$adminPageLogicHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdminPageLogic = AutoDisposeNotifier<AdminPageUIModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
