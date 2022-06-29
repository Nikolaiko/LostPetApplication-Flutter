import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/consts/ui_coff_constants.dart';
import 'package:lost_pets_app/consts/strings/button_titles.dart';
import 'package:lost_pets_app/consts/ui/ui_color_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';

const EdgeInsets authLoginWidgetPaddings = EdgeInsets.symmetric(horizontal: authViewSidePaddings);

const Widget registerButton = Text(
  registerButtonTitle, 
  textAlign: TextAlign.center, 
  style: authSelectorStyle
);

const Widget loginButton = Text(
  loginButtonTitle, 
  textAlign: TextAlign.center, 
  style: authSelectorStyle
);

const Duration switchAnimationDuration = Duration(milliseconds: 100);

const BoxDecoration authFieldDecoration = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: authTextFieldShadow,
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0.0, 0.0),
    ),
  ]
);

const BorderSide failedBorder = BorderSide(width: 2.0, color: redValidation);

const TextStyle failedTextStyle = TextStyle(
  fontFamily: fontFamilyName,
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: redValidation
);