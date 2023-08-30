import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/admin/category/category.dart';
import '../../../../models/admin/product/currency/currency.dart';
import '../../../../models/admin/product/product.dart';
import '../../../../models/admin/product/update_product_model.dart';
import '../../../../utils/context_extensions.dart';
import '../admin_page_logic.dart';

class UpdateProductDialog extends ConsumerStatefulWidget {
  const UpdateProductDialog(
      this.product, this.categories, this.currencies, this.productsMap,
      {this.onSuccess, super.key});
  final Product product;
  final List<Category> categories;
  final List<Currency> currencies;
  final Map<int, List<Product>> productsMap;
  final Function()? onSuccess;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateProductDialogState();
}

class _UpdateProductDialogState extends ConsumerState<UpdateProductDialog> {
  late UpdateProductRequest productRequest;

  @override
  void initState() {
    super.initState();
    productRequest = UpdateProductRequest(
      id: widget.product.id,
      categoryId: widget.product.categoryId,
      name: widget.product.name,
      description: widget.product.description,
      price: widget.product.price,
      imageBase64: widget.product.imageBase64,
      currencyId: widget.product.currencyId,
      productVideoLink: widget.product.productVideoLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Category category = widget.categories.firstWhere(
        (Category category) => category.id == widget.product.categoryId);
    final Currency currency = widget.currencies.firstWhere(
        (Currency currency) => currency.id == widget.product.currencyId);
    return AlertDialog(
      title: const Text('Update Product'),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <StatefulWidget>[
            DropdownButtonFormField<Category>(
              value: category,
              onChanged: (Category? newValue) {
                productRequest =
                    productRequest.copyWith(categoryId: newValue!.id);
              },
              items: widget.categories
                  .map<DropdownMenuItem<Category>>(
                    (Category category) => DropdownMenuItem<Category>(
                      value: category,
                      child: Text(category.name),
                    ),
                  )
                  .toList(),
              decoration: const InputDecoration(
                labelText: 'Category',
                border: OutlineInputBorder(),
              ),
            ),
            DropdownButtonFormField<Currency>(
              value: currency,
              onChanged: (Currency? newValue) {
                productRequest =
                    productRequest.copyWith(currencyId: newValue!.id);
              },
              items: widget.currencies
                  .map<DropdownMenuItem<Currency>>(
                    (Currency currency) => DropdownMenuItem<Currency>(
                      value: currency,
                      child: Text(currency.name),
                    ),
                  )
                  .toList(),
              decoration: const InputDecoration(
                labelText: 'Currency',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              initialValue: widget.product.name,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) =>
                  productRequest = productRequest.copyWith(name: value),
            ),
            TextFormField(
              initialValue: widget.product.description,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) =>
                  productRequest = productRequest.copyWith(description: value),
            ),
            TextFormField(
              initialValue: widget.product.price.toString(),
              decoration: const InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) => productRequest =
                  productRequest.copyWith(price: int.parse(value)),
            ),
            TextFormField(
              initialValue: widget.product.imageBase64,
              decoration: const InputDecoration(
                labelText: 'Image Base64',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) =>
                  productRequest = productRequest.copyWith(imageBase64: value),
            ),
            TextFormField(
              initialValue: widget.product.productVideoLink,
              decoration: const InputDecoration(
                labelText: 'Product Video Link',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) => productRequest =
                  productRequest.copyWith(productVideoLink: value),
            ),
          ].seperate(16),
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            ref
                .read(adminPageLogicProvider.notifier)
                .updateProduct(productRequest, onSuccess: widget.onSuccess);
            context.pop();
          },
          child: const Text('Update'),
        ),
      ],
    );
  }
}
