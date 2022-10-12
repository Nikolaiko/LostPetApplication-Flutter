import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lost_pets_app/auth/state/auth_app_state.dart';
import 'package:lost_pets_app/navigation/routes.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';
import 'package:lost_pets_app/network_layer/network_service_http.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';
import 'package:lost_pets_app/repositories/shared_prefs.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPrefs _instance = SharedPrefs();
  await _instance.init();

  GetIt.instance.registerSingleton<LocalStorage>(_instance);
  GetIt.instance.registerSingleton<NetworkService>(NetworkServiceHttp());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthAppState>(
      create: (_) => AuthAppState(GetIt.instance.get<LocalStorage>()),
      child: Consumer<AuthAppState>(builder:(_, value, child) {
        return MaterialApp.router(
          theme: ThemeData(primarySwatch: Colors.blue),
          routeInformationParser: const RoutemasterParser(), 
          routerDelegate: RoutemasterDelegate(
            routesBuilder: ((BuildContext delegateContext) {
              return Provider.of<AuthAppState>(delegateContext).needToAuthorizeUser 
                ? loggedInRoutes 
                : loggedOutRoutes;
            })
          )
        );
      })                
    );
  }
}