import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/state/auth_screen_state.dart';
import 'package:lost_pets_app/auth/view/auth_text_field.dart';
import 'package:lost_pets_app/common_widgets/blue_paw_button.dart';
import 'package:lost_pets_app/consts/strings/button_titles.dart';
import 'package:lost_pets_app/consts/type_aliases.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_paddings.dart';

class AuthLoginForm extends StatelessWidget {
  final AuthScreenState _state;

  const AuthLoginForm(
    this._state,
    {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: bottom32Padding,
          child: AuthTextField(
            authEmailHint, 
            _state.onLoginEmailChange, 
            false,
            _state.loginEmailError,
            _state.loginEmailError.isNotEmpty
          ),
        ),
        AuthTextField(
          authPasswordHint, 
          _state.onLoginPasswordChange,
          true,
          _state.loginPasswordError,
          _state.loginPasswordError.isNotEmpty           
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
          child: BluePawButton(loginButtonTitle, _state.tryToLogin),
        ),
        TextButton(
          onPressed: (){ }, 
          child: const Text(
            forgotPasswordTitle, 
            style: forgotPasswordButtonStyle
          )
        )
      ],
    );
  }
}