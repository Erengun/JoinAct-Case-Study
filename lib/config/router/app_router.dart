// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../data/getstore/get_store_helper.dart';
import '../../di/components/service_locator.dart';
import '../../ui/features/admin/admin_page.dart';
import '../../ui/features/user/user_screen.dart';
import '../../ui/features/user/no_user.dart';
import '../../ui/features/user/register_user.dart';
import 'fade_extension.dart';

GetStoreHelper getStoreHelper = getIt<GetStoreHelper>();

enum SGRoute {
  home,
  register,
  noUser,
  secondScreen,
  userScreen;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@Singleton()
class SGGoRouter {
  final GoRouter goRoute = GoRouter(
    initialLocation: SGRoute.home.route,
    routes: <GoRoute>[
      GoRoute(
        path: SGRoute.home.route,
        builder: (BuildContext context, GoRouterState state) =>
            const AdminPage(),
      ).fade(),
      GoRoute(
        path: SGRoute.register.route,
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterScreen(),
      ).fade(),
      GoRoute(
        path: SGRoute.noUser.route,
        builder: (BuildContext context, GoRouterState state) => const NoUser(),
      ).fade(),
      GoRoute(
        path: SGRoute.secondScreen.route,
        builder: (BuildContext context, GoRouterState state) =>
            const UserScreen(),
        redirect: _authGuard,
      ).fade(),
    ],
  );
  GoRouter get getGoRouter => goRoute;
}

/// Example: Auth guard for Route Protection. GetStoreHelper is used to get token.
// ignore: unused_element
final String? Function(BuildContext context, GoRouterState state) _authGuard =
    (BuildContext context, GoRouterState state) {
  if (!(getStoreHelper.getToken() != null)) {
    return SGRoute.noUser.route;
  }
  return null;
};
