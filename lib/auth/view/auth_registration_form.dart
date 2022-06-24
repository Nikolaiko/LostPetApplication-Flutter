import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/state/auth_screen_state.dart';
import 'package:lost_pets_app/auth/view/auth_text_field.dart';
import 'package:lost_pets_app/common_widgets/blue_paw_button.dart';
import 'package:lost_pets_app/consts/strings/button_titles.dart';
import 'package:lost_pets_app/consts/ui/ui_paddings.dart';

class AuthRegistrationForm extends StatelessWidget {
  final AuthScreenState _state;

  const AuthRegistrationForm(
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
            authNameHint,
            _state.onRegisterNameChange,
            false,
            _state.registerNameError,
            _state.registerNameError.isNotEmpty
          ),
        ),
        Padding(
          padding: bottom32Padding,
          child: AuthTextField(
            authEmailHint,
            _state.onRegisterEmailChange,
            false,
            _state.registerEmailError,
            _state.registerEmailError.isNotEmpty
          ),
        ),
        Padding(
          padding: bottom32Padding,
          child: AuthTextField(
            authPasswordHint,
            _state.onRegisterPasswordChange,
            true,
            _state.registerPasswordError,
            _state.registerPasswordError.isNotEmpty
          ),
        ),
        Padding(
          padding: bottom40Padding,
          child: AuthTextField(
            authRepeatPasswordHint,
            _state.onRegisterPasswordConfirmChange,
            true,
            _state.registerPasswordConfirmError,
            _state.registerPasswordConfirmError.isNotEmpty
          ),
        ),     
        BluePawButton("Зарегестрироваться", _state.tryToRegister)
      ],
    );
  }
}