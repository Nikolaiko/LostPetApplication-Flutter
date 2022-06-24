import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/consts/ui_objects_constants.dart';
import 'package:lost_pets_app/auth/model/auth_screen_type.dart';
import 'package:lost_pets_app/auth/state/auth_screen_state.dart';
import 'package:lost_pets_app/auth/view/auth_login_form.dart';
import 'package:lost_pets_app/auth/view/auth_registration_form.dart';
import 'package:lost_pets_app/auth/view/auth_view_selector.dart';
import 'package:lost_pets_app/auth/view/logo_view.dart';
import 'package:lost_pets_app/consts/strings/button_titles.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';
import 'package:provider/provider.dart';

class AuthView extends StatefulWidget {
  const AuthView(
    { Key? key }
  ) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(        
        children: [
          const Padding(
            padding: authLogoPaddings,
            child: LogoView(),            
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,          
                children: [
                  Consumer<AuthScreenState>(
                    builder: (context, value, child) {
                      return Column(
                        children: [
                          const Padding(
                            padding: authSelectorPaddings,
                            child: AuthViewSelector(),
                          ),
                          Padding(
                            padding: authLoginWidgetPaddings,
                            child: value.screenType == AuthScreenType.login
                              ? AuthLoginForm(value)
                              : AuthRegistrationForm(value)
                          )
                        ]
                      );
                    }
                  ),                               
                  TextButton(
                    onPressed: (){},
                    child: const Text(laterLoginTitle, style: forgotPasswordButtonStyle)
                  )
                ]
              ),
            ),
          )
        ]
      )
    );
  }
}