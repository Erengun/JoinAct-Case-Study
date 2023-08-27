// ignore_for_file: always_specify_types

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/admin/category/category.dart';
import '../../../models/admin/product/product.dart';

part 'admin_page_ui_model.freezed.dart';

@freezed
class AdminPageUIModel with _$AdminPageUIModel {
  const factory AdminPageUIModel({
    @Default([]) List<Category> categories,
    @Default([]) List<Product> products,
    @Default({}) Map<int, List<Product>> productsMap,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default(null) Category? selectedCategory,

  }) = _AdminPageUIModel;
}
