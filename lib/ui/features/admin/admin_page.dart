import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../utils/context_extensions.dart';

import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/currency/currency.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../widgets/app_bar_gone.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'admin_page_logic.dart';
import 'admin_page_ui_model.dart';
import 'categories/category_list_view.dart';
import 'categories/create_category_dialog.dart';
import 'products/create_product_dialog.dart';
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

    /// The initState method is called when the widget is inserted into the widget tree.
    /// We use it to fetch the categories and products from the network.
    /// We use the read method from Riverpod to read a provider without listening to it.
    /// This is useful when we want to fetch data only once.
    /// We use the then method to execute code after the future is completed.
    ref.read(fetchAdminCategoriesProvider.future).then(
        (Either<String, GetCategoriesResponse> response) => response.fold(
                (String errorMessage) {
              ref.read(adminPageLogicProvider.notifier).setError(errorMessage);
              context.showAwesomeMaterialBanner(
                  title: 'Error', message: 'Api error');
            },
                (GetCategoriesResponse response) => ref
                    .read(adminPageLogicProvider.notifier)
                    .setCategories(response.data.categories)));
    ref
        .read(fetchAdminCurrenciesProvider.future)
        .then((Either<String, GetCurrenciesResponse> response) => response.fold(
              (String errorMessage) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setError(errorMessage),
              (GetCurrenciesResponse response) => ref
                  .read(adminPageLogicProvider.notifier)
                  .setCurrencies(response.data.currencies),
            ));
    ref
        .read(fetchAdminProductsProvider.future)
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
              return _addDialog(context, adminLogic);
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
          const Header(text: 'Categories'),
          Expanded(
            child: adminLogic.errorMessage != null
                ? Center(
                    /// For errors, we just show a text widget with the error message.
                    /// but you can use any widget you want.
                    /// The important thing is we can show the error message to the user.
                    child: Text(
                      'Api error',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  )
                : (adminLogic.isCategoryLoading || adminLogic.isProductLoading)
                    ? const Center(child: CircularProgressIndicator())
                    : const CategoriesListView(),
          ),
        ],
      ),
    );
  }

  Wrap _addDialog(BuildContext context, AdminPageUIModel adminLogic) {
    return Wrap(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.category),
          title: const Text('Add Category'),
          onTap: () => showAdaptiveDialog(
              context: context,
              builder: (BuildContext context) => const CreateCategoryDialog()),
        ),
        ListTile(
          leading: const Icon(Icons.shop),
          title: const Text('Add Product'),
          onTap: () => showAdaptiveDialog(
              context: context,
              builder: (BuildContext context) => CreateProductDialog(
                    categories: adminLogic.categories,
                    currencies: adminLogic.currencies,
                  )), // This function should open a dialog to create a new product
        ),
      ],
    );
  }
}
