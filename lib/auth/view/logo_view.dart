import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lost_pets_app/auth/consts/ui_coff_constants.dart';
import 'package:lost_pets_app/consts/ui/ui_file_names.dart';

class LogoView extends StatelessWidget {
  const LogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SvgPicture.asset(
        logoFileName,
        width: screenWidth * logoWidthCoff,
      ),
    );
  }
}