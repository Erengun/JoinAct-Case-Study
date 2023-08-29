// ignore_for_file: flutter_style_todos

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../../config/router/app_router.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
import '../../../models/user.dart';
import '../../../models/user/order/create_order_model.dart';
import '../../../utils/context_extensions.dart';
import '../../widgets/app_bar_gone.dart';
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
              context.showErrorSnackBar(
                  title: 'Error', message: errorMessage);
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
  }

  @override
  Widget build(BuildContext context) {
    final UserUIModel userLogic = ref.watch(userLogicProvider);
    return Scaffold(
        appBar: const EmptyAppBar(),
        bottomNavigationBar: const BottomNavBar(),
        floatingActionButton: Badge(
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
                      ListView.builder(
                        itemCount: userLogic.cartProducts.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final Product product = userLogic.cartProducts[index];
                          return ProductCard(product: product, onTap: () {});
                        },
                      ),
                      const Divider(),
                      // create order
                      ListTile(
                        leading: const Icon(Ionicons.cash_outline),
                        title: const Text('Create Order'),
                        onTap: () {
                          final int id = userLogic.user.id.isNegative
                              ? int.parse(getStoreHelper.getToken()!)
                              : userLogic.user.id;
                          final CreateOrderRequest order = CreateOrderRequest(
                            productIds: userLogic.cartProducts
                                .map((Product e) => e.id)
                                .toList(),
                            time: DateTime.now().toIso8601String(),
                            userId: id,
                          );
                          ref
                              .read(userLogicProvider.notifier)
                              .createOrder(order, onSuccess: () {
                            context.showErrorSnackBar(
                                title: 'Success',
                                message: 'Order created successfully');
                            context.pop();
                          });
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Ionicons.cart_outline),
          ),
        ),
        body: Column(
          children: <Widget>[
            const Header(text: 'User Section'),
            Row(
              children: <Widget>[
                Text('Welcome ${userLogic.user.name}'),
                IconButton(
                  onPressed: () {
                    ref.read(userLogicProvider.notifier).logout();
                    context.go(SGRoute.noUser.route);
                  },
                  icon: const Icon(Ionicons.log_out_outline),
                ),
              ],
            ),
            const Text('Your Orders'),
            const Expanded(child: OrderHistoryWidget()),
            const Text('Products List'),
            const Expanded(child: ProductsListView()),
          ],
        ));
  }
}
