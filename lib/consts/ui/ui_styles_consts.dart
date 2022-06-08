import 'package:flutter/material.dart';
import 'package:lost_pets_app/consts/ui/ui_color_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';

//Paw Button
RoundedRectangleBorder pawButtonBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8.0)
);

const EdgeInsets pawButtonPadding = EdgeInsets.fromLTRB(32, 18, 32, 18);

ButtonStyle pawButtonMaterialStyle = ButtonStyle(
  shape: MaterialStateProperty.all<OutlinedBorder>(pawButtonBorder),
  textStyle: MaterialStateProperty.all<TextStyle>(pawButtonStyle),
  padding: MaterialStateProperty.all<EdgeInsets>(pawButtonPadding),
  backgroundColor: MaterialStateProperty.all<Color>(mainBlue)
);