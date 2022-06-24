import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/consts/ui_objects_constants.dart';
import 'package:lost_pets_app/auth/model/auth_screen_type.dart';
import 'package:lost_pets_app/auth/state/auth_screen_state.dart';
import 'package:lost_pets_app/consts/ui/ui_color_consts.dart';
import 'package:provider/provider.dart';

class AuthViewSelector extends StatefulWidget {
  const AuthViewSelector({Key? key}) : super(key: key);

  @override
  State<AuthViewSelector> createState() => _AuthViewSelectorState();
}

class _AuthViewSelectorState extends State<AuthViewSelector> {
  @override
  Widget build(BuildContext context) {
    AuthScreenState state = Provider.of<AuthScreenState>(context);
    return Row(children: [
      Expanded(
        child: Column(          
          children: [
            _buildButtonsRow(state),
            _buildAnimatedLine(state),
            const Divider(height: 1, color: mainBlue, indent: 0.0)
          ],
        ),
      )
    ],);    
  }

  Row _buildAnimatedLine(AuthScreenState state) {
    return Row(
      children: [
        Flexible(
          child: AnimatedAlign(
            alignment: state.screenType == AuthScreenType.login
              ? Alignment.centerLeft
              : Alignment.centerRight,
            duration: switchAnimationDuration,
            child: LayoutBuilder(
              builder: (context, constraints) {                  
                return SizedBox(
                  width: constraints.maxWidth / 2, 
                  height: 5, child: Container(color: mainBlue)
                );
              }
            )
          )
        )
      ]
    );
  }

  Row _buildButtonsRow(AuthScreenState state) {
    return Row(              
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              state.toggleScreenType();
              FocusManager.instance.primaryFocus?.unfocus();
            }, 
            child: loginButton
          )
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              state.toggleScreenType();
              FocusManager.instance.primaryFocus?.unfocus();
            }, 
            child: registerButton
          )
        )
      ]
    );
  }
}