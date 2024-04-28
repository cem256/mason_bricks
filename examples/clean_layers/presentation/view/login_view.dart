import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child: const _LoginBody(),
      ),
    );
  }
}

class _LoginBody extends StatelessWidget {
  const _LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
