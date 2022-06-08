import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/consts/ui_objects_constants.dart';
import 'package:lost_pets_app/consts/type_aliases.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';

class AuthTextField extends StatelessWidget {
  final String _hintText;
  final StringCallback _changeCallback;
  final bool _obscureText;

  const AuthTextField(
    this._hintText,
    this._changeCallback,
    this._obscureText,
    {Key? key}    
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(        
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none
          ),          
          fillColor: Colors.white,
          filled: true,
          hintText: _hintText,
          hintStyle: authTextFieldHintStyle,      
        ),
        style: authTextFieldStyle,
        onChanged: _changeCallback,
      ),  
      decoration: authFieldDecoration,
    );
  }
}