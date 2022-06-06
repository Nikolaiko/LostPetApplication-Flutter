import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/view/logo_view.dart';
import 'package:lost_pets_app/consts/ui_coff_constants.dart';

class AuthView extends StatefulWidget {
  const AuthView({ Key? key }) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: logoTopPadding),
            child: const LogoView(),
          )
        ],
      ),
    );
  }
}