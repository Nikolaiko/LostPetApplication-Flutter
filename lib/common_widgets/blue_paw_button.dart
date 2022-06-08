import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lost_pets_app/consts/ui/ui_file_names.dart';
import 'package:lost_pets_app/consts/ui/ui_fonts_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_styles_consts.dart';

class BluePawButton extends StatelessWidget {
  final String _buttonTitle;
  final VoidCallback _callback;

  const BluePawButton(
    this._buttonTitle,
    this._callback,
    {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: _callback, 
      icon: SvgPicture.asset(pawIconsFileName), 
      label: Text(_buttonTitle, style: pawButtonStyle),
      style: pawButtonMaterialStyle
    );
  }
}