import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/admin/category/category.dart';
import '../../../../models/admin/product/product.dart';
import '../../../../utils/context_extensions.dart';
import '../admin_page_logic.dart';
import '../admin_page_ui_model.dart';
import '../products/product_card.dart';

class CategoriesListView extends ConsumerWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AdminPageUIModel adminLogic = ref.watch(adminPageLogicProvider);
    return ListView.builder(
      itemCount: adminLogic.productsMap.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final Category category = adminLogic.categories[index];
        final List<Product> products = adminLogic.productsMap[category.id]!;
        return ExpansionTile(
          title: Text(category.name),
          children: products
              .map((Product product) => Dismissible(
                    key: UniqueKey(),
                    child: ProductCard(
                      product: product,
                      onTap: () {},
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
