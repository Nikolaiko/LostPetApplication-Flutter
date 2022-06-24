import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/consts/ui_coff_constants.dart';
import 'package:lost_pets_app/consts/strings/button_titles.dart';
import 'package:lost_pets_app/consts/ui/ui_color_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';

const EdgeInsets authLogoPaddings = EdgeInsets.fromLTRB(
  0,
  logoTopPadding,
  0,
  logoBottomPadding
);

const EdgeInsets authSelectorPaddings = EdgeInsets.fromLTRB(
  authViewSidePaddings, 
  0, 
  authViewSidePaddings, 
  authSelectorBottomPaddings
);

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
      blurRadius: 15,
      spreadRadius: 2,
      offset: Offset(0, 1),
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