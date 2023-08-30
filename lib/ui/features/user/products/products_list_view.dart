import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/admin/category/category.dart';
import '../../../../models/admin/product/product.dart';
import '../../../../utils/context_extensions.dart';
import '../../admin/products/product_card.dart';
import '../user_logic.dart';
import '../user_ui_model.dart';

class ProductsListView extends ConsumerWidget {
  const ProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserUIModel userLogic = ref.watch(userLogicProvider);
    return ListView.builder(
      itemCount: userLogic.categories.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final Category category = userLogic.categories[index];
        final List<Product> products = userLogic.productsMap[category.id] ?? [];
        return 
        ExpansionTile(
          title: Text(category.name),
          children: products
              .map((Product product) => ProductCard(
                product: product,
                onTap: () {
                  ref
                      .read(userLogicProvider.notifier)
                      .addProductToCart(product);
                  context.showAwesomeMaterialBanner(
                      title: 'Success',
                      message: 'Product added to cart successfully');
                },
              ))
              .toList(),
        );
      },
    );
  }
}
