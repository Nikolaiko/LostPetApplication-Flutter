import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/state/auth_screen_state.dart';
import 'package:lost_pets_app/auth/view/auth_view.dart';
import 'package:provider/provider.dart';

class AuthInitialFlow extends StatelessWidget {
  const AuthInitialFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthScreenState>(
      create: (context) => AuthScreenState(),
      child: const AuthView(),
    );
  }
}