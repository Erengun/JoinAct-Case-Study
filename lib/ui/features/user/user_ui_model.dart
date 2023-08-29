// ignore_for_file: always_specify_types

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/admin/category/category.dart';
import '../../../models/admin/product/product.dart';
import '../../../models/user.dart';
import '../../../models/user/order/order.dart';

part 'user_ui_model.freezed.dart';

@freezed
class UserUIModel with _$UserUIModel {
  const factory UserUIModel({
    @Default([]) List<Order> orders,
    @Default([]) List<Category> categories,
    @Default(User()) User user,
    @Default({}) Map<int, List<Product>> productsMap,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _UserUIModel;
}