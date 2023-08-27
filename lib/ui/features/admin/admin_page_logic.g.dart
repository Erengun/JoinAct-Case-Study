// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_page_logic.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
String _$adminPageLogicHash() => r'f45a56bd5431f989f601aeadd86384416190e086';

/// See also [AdminPageLogic].
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
