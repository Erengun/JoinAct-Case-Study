import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../utils/context_extensions.dart';

import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
import '../../widgets/app_bar_gone.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'admin_page_logic.dart';
import 'admin_page_ui_model.dart';
import 'categories/create_category_dialog.dart';
import 'products/create_product_dialog.dart';
import 'products/product_card.dart';
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
    ref.read(fetchCategoriesProvider.future).then(
        (Either<String, GetCategoriesResponse> response) => response.fold(
                (String errorMessage) {
              ref.read(adminPageLogicProvider.notifier).setError(errorMessage);
              final SnackBar snackBar = SnackBar(
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: AwesomeSnackbarContent(
                    title: 'Unlucky'.tr(),
                    message: 'api_error'.tr(),
                    contentType: ContentType.failure),
              );
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
                (GetCategoriesResponse response) => ref
                    .read(adminPageLogicProvider.notifier)
                    .setCategories(response.data.categories)));
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
          const LanguageTile(),
          const Header(text: 'Categories'),
          Expanded(
            child: adminLogic.errorMessage != null
                ? Center(
                    child: Text(
                      'Api error',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  )
                : adminLogic.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : // show Products
                    const CategoriesListView(),
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
                  )), // This function should open a dialog to create a new product
        ),
      ],
    );
  }
}

class CategoriesListView extends ConsumerWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AdminPageUIModel adminLogic = ref.watch(adminPageLogicProvider);
    return ListView.builder(
      itemCount: adminLogic.productsMap.keys.length,
      itemBuilder: (BuildContext context, int index) {
        final Category category = adminLogic.categories[index];
        final List<Product> products = adminLogic.productsMap[category.id]!;
        return ExpansionTile(
          title: Text(category.name),
          children: products
              .map((Product product) => Dismissible(
                    key: UniqueKey(),
                    child: ProductCard(product: product),
                    onDismissed: (DismissDirection direction) {
                      ref
                          .read(adminPageLogicProvider.notifier)
                          .removeProduct(product.id);
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.transparent,
                            content: AwesomeSnackbarContent(
                                title: 'Success'.tr(),
                                message: 'product_deleted'.tr(),
                                contentType: ContentType.success),
                          ),
                        );
                    },
                  ))
              .toList(),
        );
      },
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
