// ignore_for_file: flutter_style_todos

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../../config/router/app_router.dart';
import '../../widgets/app_bar_gone.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../admin/widgets/header.dart';
import 'user_logic.dart';
import 'user_ui_model.dart';

class UserScreen extends ConsumerStatefulWidget {
  const UserScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserScreenState();
}

class _UserScreenState extends ConsumerState<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final UserUIModel userLogic = ref.watch(userLogicProvider);
    return Scaffold(
        appBar: const EmptyAppBar(),
        bottomNavigationBar: const BottomNavBar(),
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
            //const OrderHistoryWidget(),
            //const CategoriesListView(),
          ],
        ));
  }
}
