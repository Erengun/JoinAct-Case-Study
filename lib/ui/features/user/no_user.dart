// no user page
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router/app_router.dart';

class NoUser extends StatelessWidget {
  const NoUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
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
