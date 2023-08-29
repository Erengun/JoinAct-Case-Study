// ignore_for_file: always_specify_types

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/admin/category/category.dart';
import '../../../models/admin/product/currency/currency.dart';
import '../../../models/admin/product/product.dart';

part 'admin_page_ui_model.freezed.dart';

/// AdminPageUIModel:
/// The AdminPageUIModel class is a freezed class that represents the state of the AdminPage.
/// It contains a list of categories, a list of products, a map of products,
/// Whether the categories and products are loading, an error message, and a selected category.
/// By using freezed, we can easily create a copy of the AdminPageUIModel with a different value.
/// This is useful when we want to update the state of the AdminPage.
@freezed
class AdminPageUIModel with _$AdminPageUIModel {
  const factory AdminPageUIModel({
    /// The @Default annotation is used to set a default value for a field.
    @Default([]) List<Category> categories,
    @Default([]) List<Product> products,
    @Default({}) Map<int, List<Product>> productsMap,
    @Default(false) bool isCategoryLoading,
    @Default(false) bool isProductLoading,
    @Default(null) String? errorMessage,
    @Default(null) Category? selectedCategory,
    @Default([]) List<Currency> currencies,

  }) = _AdminPageUIModel;
}
