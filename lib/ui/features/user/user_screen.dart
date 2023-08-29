// ignore_for_file: flutter_style_todos

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../../config/router/app_router.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
import '../../../models/user.dart';
import '../../../models/user/get_order_model.dart';
import '../../../utils/context_extensions.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/orders_widget.dart';
import '../admin/products/product_card.dart';
import '../admin/widgets/header.dart';
import 'products/products_list_view.dart';
import 'user_logic.dart';
import 'user_ui_model.dart';

class UserScreen extends ConsumerStatefulWidget {
  const UserScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserScreenState();
}

class _UserScreenState extends ConsumerState<UserScreen> {
  @override
  void initState() {
    super.initState();

    /// The initState method is called when the widget is inserted into the widget tree.
    /// We use it to fetch the categories and products from the network.
    /// We also fetch the user from the local storage.
    /// We use the [ref.read] method to read the providers and then call the [future] method on them.
    /// The [future] method returns a [Future] object which we can then use to listen to the result of the future.
    /// We use the [then] method to execute code after the future is completed.
    ref.read(fetchUserProvider.future).then((User? user) {
      if (user == null) {
        context.go(SGRoute.noUser.route);
      } else {
        ref.read(userLogicProvider.notifier).setUser(user);
      }
    });

    ref.read(fetchCategoriesProvider.future).then(
        (Either<String, GetCategoriesResponse> response) => response.fold(
                (String errorMessage) {
              ref.read(userLogicProvider.notifier).setError(errorMessage);
              context.showErrorSnackBar(title: 'Error', message: errorMessage);
              context.pop();
            },
                (GetCategoriesResponse response) => ref
                    .read(userLogicProvider.notifier)
                    .setCategories(response.data.categories)));
    ref
        .read(fetchProductsProvider.future)
        .then((Either<String, GetProductsResponse> response) => response.fold(
              (String errorMessage) =>
                  ref.read(userLogicProvider.notifier).setError(errorMessage),
              (GetProductsResponse response) => ref
                  .read(userLogicProvider.notifier)
                  .setProducts(response.data.products),
            ));

    ref.read(getOrdersForUserIdProvider.future).then(
        (Either<String, GetOrdersResponse> response) => response.fold(
                (String errorMessage) {
              ref.read(userLogicProvider.notifier).setError(errorMessage);
              context.showErrorSnackBar(title: 'Error', message: errorMessage);
            },
                (GetOrdersResponse response) => ref
                    .read(userLogicProvider.notifier)
                    .setOrders(response.data.orders)));
  }

  @override
  Widget build(BuildContext context) {
    final UserUIModel userLogic = ref.watch(userLogicProvider);
    return Scaffold(
      appBar: _userAppBar(context),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: _cartButton(userLogic, context),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Header(text: 'User Section'),
              Card(
                child: ListTile(
                  leading: const Icon(Ionicons.person_outline),
                  title: Text('Welcome ${userLogic.user.name}'),
                ),
              ),
              const Gap(12),
              const Header(
                text: 'Order History',
              ),
              const Expanded(flex: 2, child: OrderHistoryWidget()),
              const Header(
                text: 'Products List',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Tap on a product to add it to your cart',
                    style: context.textTheme.bodySmall!
                        .copyWith(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Categories: ${userLogic.categories.length}',
                    style: context.textTheme.bodyMedium),
              ),
              Expanded(
                  flex: 3,
                  child: userLogic.errorMessage != null
                      ? const Center(child: Text('An error occurred'))
                      : const ProductsListView())
            ],
          ),
        ),
      ),
    );
  }

  AppBar _userAppBar(BuildContext context) {
    return AppBar(
      title: const Text('User Section'),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            ref.read(userLogicProvider.notifier).logout();

            /// The [context.go] method is used to navigate to a route.
            /// We use it to navigate to the [NoUserScreen] route.
            /// The [NoUserScreen] route is the route that is shown when the user is not logged in. `
            context.go(SGRoute.noUser.route);
          },
          icon: const Icon(Ionicons.log_out_outline),
        ),
      ],
    );
  }

  Badge _cartButton(UserUIModel userLogic, BuildContext context) {
    return Badge(
      label: Text('${userLogic.cartProducts.length}'),
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Ionicons.cart_outline),
                    title: Text('Cart'),
                  ),
                  //  show cart products
                  Expanded(
                    child: userLogic.errorMessage != null
                        ? const Center(child: Text('An error occurred'))
                        : GridView.builder(
                            itemCount: userLogic.cartProducts.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              final Product product =
                                  userLogic.cartProducts[index];
                              return ProductCard(
                                  product: product, onTap: () {});
                            },
                          ),
                  ),

                  const Divider(),
                  // create order
                  ListTile(
                    leading: const Icon(Ionicons.cash_outline),
                    title: const Text('Create Order'),
                    onTap: () {
                      ref.read(userLogicProvider.notifier).createOrder(
                          onSuccess: () {
                        context.showAwesomeMaterialBanner(
                            title: 'Success',
                            message: 'Order created successfully');
                        context.pop();
                      });
                    },
                  ),
                  const Gap(20),
                ],
              );
            },
          );
        },
        child: const Icon(Ionicons.cart_outline),
      ),
    );
  }
}
