import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router/app_router.dart';
import '../../../models/user/create_user_model.dart';
import '../../../utils/context_extensions.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'user_logic.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  late CreateUserRequest request;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    request = const CreateUserRequest(
      name: '',
      surname: '',
      phone: '',
      mail: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Create New User:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Gap(16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onChanged: (String value) =>
                    request = request.copyWith(name: value),
                validator: (String? value) =>
                    value!.isEmpty ? 'Please enter a name' : null,
              ),
              const Gap(16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Surname'),
                onChanged: (String value) =>
                    request = request.copyWith(surname: value),
                validator: (String? value) =>
                    value!.isEmpty ? 'Please enter a surname' : null,
              ),
              const Gap(16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (String value) =>
                    request = request.copyWith(mail: value),
                validator: (String? value) => value!.isEmpty
                    ? 'Please enter a valid email address'
                    : null,
              ),
              const Gap(16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone'),
                onChanged: (String value) =>
                    request = request.copyWith(phone: value),
                validator: (String? value) =>
                    value!.isEmpty ? 'Please enter a valid phone number' : null,
              ),
              const Gap(24),
              ElevatedButton(
                onPressed: () => _createUser(context),
                child: const Text('Create User'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _createUser(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ref.read(userLogicProvider.notifier).createUser(
            request,
            onSuccess: () => context.go(SGRoute.secondScreen.route),
          );
    }
    if (ref.read(userLogicProvider).errorMessage != null) {
      context.showErrorSnackBar(
        message: 'An error occurred. Please try again.',
        title: 'Oops!',
        actionText: 'Retry',
        onActionPressed: () => _createUser(context),
      );
    }
  }
}
