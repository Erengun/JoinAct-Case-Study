import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../utils/context_extensions.dart';

import '../../../constants/endpoints.dart';
import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/create_product_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
import '../../widgets/app_bar_gone.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'admin_page_logic.dart';
import 'admin_page_ui_model.dart';
import 'categories/category_header.dart';
import 'categories/category_list_view.dart';
import 'categories/create_category_dialog.dart';
import 'widgets/header.dart';
import 'widgets/theme_widget.dart';

class AdminPage extends ConsumerStatefulWidget {
  const AdminPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdminPageState();
}

class _AdminPageState extends ConsumerState<AdminPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(fetchCategoriesProvider.future)
        .then((Either<String, GetCategoriesResponse> response) => response.fold(
              (String errorMessage) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setError(errorMessage),
              (GetCategoriesResponse response) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setCategories(response.data.categories),
            ));
    ref
        .read(fetchProductsProvider.future)
        .then((Either<String, GetProductsResponse> response) => response.fold(
              (String errorMessage) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setError(errorMessage),
              (GetProductsResponse response) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setProducts(response.data.products),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final AdminPageUIModel adminLogic = ref.watch(adminPageLogicProvider);
    return Scaffold(
      appBar: const EmptyAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: context.colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                child: Wrap(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.category),
                      title: const Text('Add Category'),
                      onTap: () => showAdaptiveDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const CreateCategoryDialog()),
                    ),
                    ListTile(
                      leading: const Icon(Icons.shop),
                      title: const Text('Add Product'),
                      onTap: () => showAdaptiveDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CreateProductDialog(
                                categories: adminLogic.categories,
                              )), // This function should open a dialog to create a new product
                    ),
                  ],
                ),
              );
            },
          );
        },
        tooltip: 'Add Category/Product',
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Header(text: 'Admin Section'),
          const Divider(),
          const ThemeWidget(),
          const LanguageTile(),
          RowHeader(
            header: 'Categories',
            onPressed: () => showAdaptiveDialog(
                context: context,
                builder: (BuildContext context) =>
                    const CreateCategoryDialog()),
          ),
          if ((adminLogic.categories == null ||
                  adminLogic.categories.isEmpty) &&
              !adminLogic.isLoading)
            const Expanded(child: Center(child: Text('No data')))
          else
            adminLogic.errorMessage != null
                ? Center(
                    child: Text(
                      adminLogic.errorMessage!,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )
                : adminLogic.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : // show Categories
                    Expanded(
                        child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.builder(
                            itemCount: adminLogic.categories.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Category category =
                                  adminLogic.categories[index];
                              return CategoryTile(category: category);
                            }),
                      )),
          RowHeader(header: 'Products', onPressed: () {}),
          Expanded(
            child: adminLogic.errorMessage != null
                ? Center(
                    child: Text(
                      adminLogic.errorMessage!,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )
                : adminLogic.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : // show Products
                    ListView.builder(
                        itemCount: adminLogic.products.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Product product = adminLogic.products[index];
                          return ListTile(
                            title: Text(product.name),
                            subtitle: Text(product.description),
                            trailing: Text(product.price.toString()),
                          );
                        }),
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends ConsumerWidget {
  const CategoryTile({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(
        category.id.toString(),
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(
        category.name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: IconButton(
        onPressed: () {
          ref.read(adminPageLogicProvider.notifier).removeCategory(category.id);
        },
        icon: const Icon(Ionicons.trash_outline),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  const LanguageTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      onChanged: (bool newValue) {
        /// Example: Change locale
        /// The initial locale is automatically determined by the library.
        /// Changing the locale like this will persist the selected locale.
        context.setLocale(newValue ? const Locale('tr') : const Locale('en'));
      },
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      value: context.locale == const Locale('tr'),
      title: Text(
        tr('toggle_language'),
        style:
            Theme.of(context).textTheme.titleMedium!.apply(fontWeightDelta: 2),
      ),
    );
  }
}

class ProductCard extends ConsumerWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            product.imageBase64,
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) =>
                    const Placeholder(),
          ), // assuming imageBase64 is a URL
          Text(product.name),
          Text(product.price.toString()),
          Text(product.description),
        ],
      ),
    );
  }
}

class CreateProductDialog extends ConsumerStatefulWidget {
  const CreateProductDialog({super.key, required this.categories});
  final List<Category> categories;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateProductDialogState();
}

class _CreateProductDialogState extends ConsumerState<CreateProductDialog> {
  CreateProductRequest productRequest = const CreateProductRequest(
    name: '',
    description: '',
    price: 0,
    imageBase64: '',
    categoryId: 0,
    currencyId: 1,
    productVideoLink: '',
  );
  @override
  Widget build(BuildContext context) {
    final AdminPageUIModel adminLogic = ref.watch(adminPageLogicProvider);

    return AlertDialog(
      title: const Text('Create Product'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          DropdownButton<Category>(
            value: adminLogic.selectedCategory,
            onChanged: (Category? newValue) {
              ref.read(adminPageLogicProvider.notifier).setSelectedCategory(
                    newValue!,
                  );
              productRequest = productRequest.copyWith(categoryId: newValue.id);
            },
            items: widget.categories
                .map<DropdownMenuItem<Category>>(
                    (Category category) => DropdownMenuItem<Category>(
                          value: category,
                          child: Text(category.name),
                        ))
                .toList(),
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Name',
            ),
            onChanged: (String value) {
              productRequest = productRequest.copyWith(name: value);
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Description',
            ),
            onChanged: (String value) {
              productRequest = productRequest.copyWith(description: value);
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Price',
            ),
            onChanged: (String value) {
              productRequest = productRequest.copyWith(price: int.parse(value));
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Image URL',
            ),
            onChanged: (String value) {
              productRequest = productRequest.copyWith(imageBase64: value);
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Video URL',
            ),
            onChanged: (String value) {
              productRequest = productRequest.copyWith(productVideoLink: value);
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Currency ID',
            ),
            onChanged: (String value) {
              productRequest =
                  productRequest.copyWith(currencyId: int.parse(value));
            },
          ),
        ],
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
            if (productRequest != null) {
              ref.read(adminPageLogicProvider.notifier).createProduct(
                    productRequest,
                  );
              Navigator.of(context).pop();
            } else {
              // show error
              showAdaptiveDialog(
                context: context,
                builder: (BuildContext context) => const AlertDialog(
                  title: Text('Error'),
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
