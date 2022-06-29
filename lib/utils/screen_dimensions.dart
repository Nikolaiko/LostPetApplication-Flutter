import 'package:flutter/material.dart';

class ScreenDimensions {
  final BuildContext _context;

  late MediaQueryData _mediaQueryData;
  double widht = 0.0;
  double fullHeight = 0.0;
  double height = 0.0;

  ScreenDimensions(this._context) {
    _mediaQueryData = MediaQuery.of(_context);
    fullHeight = _mediaQueryData.size.height;
    EdgeInsets padding = _mediaQueryData.padding;
    height = fullHeight - padding.top - padding.bottom;
    widht = _mediaQueryData.size.width;
  }
}