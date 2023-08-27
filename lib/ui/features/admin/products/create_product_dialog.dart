import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/admin/category/category.dart';
import '../../../../models/admin/product/create_product_model.dart';
import '../admin_page_logic.dart';
import '../admin_page_ui_model.dart';

class CreateProductDialog extends ConsumerStatefulWidget {
  const CreateProductDialog({super.key, required this.categories});
  final List<Category> categories;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateProductDialogState();
}

class _CreateProductDialogState extends ConsumerState<CreateProductDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late CreateProductRequest productRequest;

  @override
  void initState() {
    super.initState();
    productRequest = const CreateProductRequest(
      name: '',
      description: '',
      price: 0,
      imageBase64: '',
      categoryId: 0,
      currencyId: 1,
      productVideoLink: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    final AdminPageUIModel adminLogic = ref.watch(adminPageLogicProvider);

    return AlertDialog(
      title: const Text('Create Product'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            DropdownButtonFormField<Category>(
              value: adminLogic.selectedCategory,
              onChanged: (Category? newValue) {
                ref
                    .read(adminPageLogicProvider.notifier)
                    .setSelectedCategory(newValue!);
                productRequest =
                    productRequest.copyWith(categoryId: newValue.id);
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
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
              onChanged: (String value) {
                productRequest = productRequest.copyWith(name: value);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              onChanged: (String value) {
                productRequest = productRequest.copyWith(description: value);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter a price';
                }
                return null;
              },
              onChanged: (String value) {
                productRequest =
                    productRequest.copyWith(price: int.parse(value));
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Image URL',
              ),
              onChanged: (String value) {
                productRequest = productRequest.copyWith(imageBase64: value);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Video URL',
              ),
              onChanged: (String value) {
                productRequest =
                    productRequest.copyWith(productVideoLink: value);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Currency ID',
              ),
              onChanged: (String value) {
                productRequest =
                    productRequest.copyWith(currencyId: int.parse(value));
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ref
                  .read(adminPageLogicProvider.notifier)
                  .createProduct(productRequest);
              Navigator.of(context).pop();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please fill all fields'),
                ),
              );
            }
          },
          child: const Text('Create'),
        ),
      ],
    );
  }
}
