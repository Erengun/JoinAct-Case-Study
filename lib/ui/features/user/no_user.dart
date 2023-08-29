// no user page
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router/app_router.dart';
import '../../widgets/app_bar_gone.dart';
import '../../widgets/bottom_nav_bar.dart';

class NoUser extends StatelessWidget {
  const NoUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fnotebook-dynamic-color.png?alt=media&token=c644a0d1-4f53-42a8-a34a-b7853c256903',
            fit: BoxFit.cover,
          ),
          const Center(
            child: Text('No user found'),
          ),
          TextButton(
            onPressed: () {
              context.go(SGRoute.register.route);
            },
            child: const Text('Create a new one?'),
          ),
        ],
      ),
    );
  }
}
