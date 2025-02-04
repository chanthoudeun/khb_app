import 'package:flutter/material.dart';

import 'app_ext.dart';

getBoxDecoration({
  Color? background,
  double? borderWidth,
  Color? borderColor,
  bool hasShadow = false,
  bool hasBorder = false,
  Gradient? gradient,
  BorderRadius? borderRadius,
  BoxShape? shape,
  List<BoxShadow>? boxShadow,
  bool shadowAngleTop = false,
}) =>
    BoxDecoration(
        color: background ?? Colors.white,
        shape: shape ?? BoxShape.rectangle,
        gradient: gradient,
        borderRadius: shape == null
            ? borderRadius ?? BorderRadius.circular(10.0.d)
            : null,
        boxShadow: hasShadow == true
            ? [
                BoxShadow(
                    color: const Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(0, shadowAngleTop ? -2 : 2),
                    blurRadius: 2)
              ]
            : boxShadow,
        border: hasBorder == true
            ? Border.all(
                color: borderColor ?? Colors.white.withOpacity(0.25),
                width: borderWidth ?? 1)
            : Border.all(color: Colors.transparent));

/// Default : 15.0.d
spaceV({double? size}) => SizedBox(height: size ?? 15.0.d);

/// Default : 10.0.d
spaceH({double? size}) => SizedBox(width: size ?? 10.0.d);

getPaddingScreen() => EdgeInsets.symmetric(horizontal: 16.0.d);

getBoxShadowCardMAll({double? blurRadius}) => BoxShadow(
      color: Colors.black.withOpacity(0.1),
      offset: Offset(0, 1),
      blurRadius: blurRadius ?? 20,
    );
