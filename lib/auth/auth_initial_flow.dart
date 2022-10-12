import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lost_pets_app/auth/state/auth_app_state.dart';
import 'package:lost_pets_app/auth/state/auth_screen_state.dart';
import 'package:lost_pets_app/auth/view/auth_view.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';
import 'package:provider/provider.dart';

class AuthInitialFlow extends StatelessWidget {
  const AuthInitialFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthScreenState>(
      create: (providerContext) => AuthScreenState(
        GetIt.instance.get<NetworkService>(),
        GetIt.instance.get<LocalStorage>(),
        Provider.of<AuthAppState>(providerContext, listen: false)
      ),
      child: const AuthView(),
    );
  }
}