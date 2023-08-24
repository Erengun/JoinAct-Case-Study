import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/admin/category/category.dart';

part 'admin_page_ui_model.freezed.dart';

@freezed
class AdminPageUIModel with _$AdminPageUIModel {
  const factory AdminPageUIModel({
    @Default([]) List<Category> categories,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _AdminPageUIModel;
}