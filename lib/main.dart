import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lost_pets_app/auth/auth_initial_flow.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';
import 'package:lost_pets_app/network_layer/network_service_http.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';
import 'package:lost_pets_app/repositories/shared_prefs.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      home: const AuthInitialFlow(),
    );
  }
}