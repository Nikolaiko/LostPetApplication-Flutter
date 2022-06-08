import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/view/auth_text_field.dart';
import 'package:lost_pets_app/common_widgets/blue_paw_button.dart';
import 'package:lost_pets_app/consts/strings/button_titles.dart';
import 'package:lost_pets_app/consts/ui/ui_paddings.dart';

class AuthRegistrationForm extends StatelessWidget {
  const AuthRegistrationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: bottom32Padding,
          child: AuthTextField(authNameHint, (_) {}, false),
        ),
        Padding(
          padding: bottom32Padding,
          child: AuthTextField(authEmailHint, (_) {}, false),
        ),
        Padding(
          padding: bottom32Padding,
          child: AuthTextField(authPasswordHint, (_) {}, true),
        ),
        Padding(
          padding: bottom40Padding,
          child: AuthTextField(authRepeatPasswordHint, (_) {}, true),
        ),     
        BluePawButton("Зарегестрироваться", (){})
      ],
    );
  }
}