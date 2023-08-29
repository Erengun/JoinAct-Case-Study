// register user screen
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router/app_router.dart';
import '../../../models/user/create_user_model.dart';
import '../../../utils/context_extensions.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text('Create New User:'),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onChanged: (String value) =>
                    request = request.copyWith(name: value),
                validator: (String? value) =>
                    value!.isEmpty ? 'Please enter a name' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Surname'),
                onChanged: (String value) =>
                    request = request.copyWith(surname: value),
                validator: (String? value) =>
                    value!.isEmpty ? 'Please enter a surname' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (String value) =>
                    request = request.copyWith(mail: value),
                validator: (String? value) => value!.isEmpty
                    ? 'Please enter a valid email address'
                    : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone'),
                onChanged: (String value) =>
                    request = request.copyWith(phone: value),
                validator: (String? value) =>
                    value!.isEmpty ? 'Please enter a valid phone number' : null,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ref.read(userLogicProvider.notifier).createUser(
                          request,
                          onSuccess: () =>
                              context.go(SGRoute.secondScreen.route),
                        );
                  }
                  if (ref.read(userLogicProvider).errorMessage != null) {
                    context.showErrorSnackBar(
                        message: 'An error occured try again',
                        title: 'Oh no!',
                        actionText: 'Retry',
                        onActionPressed: () {
                          ref.read(userLogicProvider.notifier).createUser(
                                request,
                                onSuccess: () =>
                                    context.go(SGRoute.secondScreen.route),
                              );
                        });
                  }
                },
                child: const Text('Create User'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
