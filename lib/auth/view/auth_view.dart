import 'package:flutter/material.dart';
import 'package:lost_pets_app/model/auth/auth_screen_type.dart';
import 'package:lost_pets_app/auth/state/auth_screen_state.dart';
import 'package:lost_pets_app/auth/view/auth_login_form.dart';
import 'package:lost_pets_app/auth/view/auth_registration_form.dart';
import 'package:lost_pets_app/auth/view/auth_view_selector.dart';
import 'package:lost_pets_app/auth/view/logo_view.dart';
import 'package:lost_pets_app/consts/strings/button_titles.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_paddings.dart';
import 'package:lost_pets_app/utils/screen_dimensions.dart';
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
    ScreenDimensions _dimensions = ScreenDimensions(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(        
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              _dimensions.height * paddingVerticalCoff60,
              0,
              _dimensions.height * paddingVerticalCoff44
            ),
            child: const LogoView(),  
          ),
          Consumer<AuthScreenState>(
            builder: (context, value, child) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      _dimensions.widht * paddingHorizontalCoff32, 
                      0,
                      _dimensions.widht * paddingHorizontalCoff32, 
                      _dimensions.height * paddingVerticalCoff40
                    ),
                    child: const AuthViewSelector(),
                  ),
                  LayoutBuilder(builder: (context, constraints) {                      
                    return SizedBox(
                      width: constraints.maxWidth,
                      height: _dimensions.fullHeight * 0.564,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: _dimensions.widht * paddingHorizontalCoff32
                          ),
                          child: value.screenType == AuthScreenType.login
                            ? AuthLoginForm(value)
                            : AuthRegistrationForm(value)
                        )
                      )                                                                    
                    );
                  })                   
                ]
              );
            }
          ),
          const Spacer(),
          Consumer<AuthScreenState>(
            builder: ((context, value, child) {
              return TextButton(
                onPressed: () => value.skipLogin(),
                child: const Text(laterLoginTitle, style: forgotPasswordButtonStyle)
              );    
            })
          )           
        ]
      )
    );
  }
}