import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lost_pets_app/auth/auth_initial_flow.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';
import 'package:lost_pets_app/network_layer/network_service_https.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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