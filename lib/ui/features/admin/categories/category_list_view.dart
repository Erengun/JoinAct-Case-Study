import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/theme/theme_logic.dart';
import '../../../../config/theme/theme_ui_model.dart';
import '../../../../models/admin/category/category.dart';
import '../../../../models/admin/product/product.dart';
import '../../../../utils/context_extensions.dart';
import '../admin_page_logic.dart';
import '../admin_page_ui_model.dart';
import '../products/product_card.dart';
import '../products/update_product_dialog.dart';

class CategoriesListView extends ConsumerStatefulWidget {
  const CategoriesListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CategoriesListViewState();
}

class _CategoriesListViewState extends ConsumerState<CategoriesListView> {
  @override
  Widget build(BuildContext context) {
    final AdminPageUIModel adminLogic = ref.watch(adminPageLogicProvider);
    return ListView.builder(
      itemCount: adminLogic.categories.length,
      shrinkWrap: true,
      /// Theres a bug in the ItemBuilder of the [ListView.builder]
      /// that when theme changes the text color is not updated.
      /// To fix this we change the name of the [BuildContext context] to [BuildContext builderContext 
      /// this will make the [ListView.builder] to rebuild when the theme changes.
      itemBuilder: (BuildContext builderContext, int index) {
        final Category category = adminLogic.categories[index];
        final List<Product> products =
            adminLogic.productsMap[category.id] ?? <Product>[];
        final TextEditingController controller = TextEditingController(
          text: category.name,
        );
        return ExpansionTile(
          /// We use the [EditableText] widget to make the title editable.
          title: EditableText(
            controller: controller,
            strutStyle: const StrutStyle(),
            focusNode: FocusNode(),
            style: context.textTheme.titleLarge!,
            cursorColor: context.theme.primaryColor,
            backgroundCursorColor: context.theme.primaryColor,
            onEditingComplete: () {
              ref.read(adminPageLogicProvider.notifier).updateCategory(
                  category.id, controller.text.trim(),
                  onSuccess: () => context.showErrorSnackBar(
                      title: 'Success',
                      message: 'Category updated successfully'));
            },
          ),
          children: products
              .map((Product product) => Dismissible(
                    key: UniqueKey(),
                    child: ProductCard(
                      product: product,
                      onTap: () {
                        /// Tap on the product to update it.
                        /// We use the showDialog method to show the [UpdateProductDialog].
                        /// We pass the product, categories, currencies, and productsMap to the dialog.
                        /// We also pass a callback function to be called when the product is updated successfully.
                        /// The callback function shows a [AwesomeMaterialBanner] to show the user that the product is updated successfully.
                        /// We use the [context.showErrorSnackBar] extension method to show the [AwesomeMaterialBanner].
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                UpdateProductDialog(
                                  product,
                                  adminLogic.categories,
                                  adminLogic.currencies,
                                  adminLogic.productsMap,
                                  onSuccess: () => debugPrint(
                                      'Product updated successfully'),
                                ));
                      },
                    ),
                    onDismissed: (DismissDirection direction) {
                      ref.read(adminPageLogicProvider.notifier).removeProduct(
                          product.id,
                          onSuccess: () => context.showErrorSnackBar(
                              title: 'Success',
                              message: 'Product deleted successfully'));
                    },
                  ))
              .toList(),
        );
      },
    );
  }
}
