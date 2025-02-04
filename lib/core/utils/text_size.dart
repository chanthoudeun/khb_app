import 'package:flutter/material.dart';

Size getTextSize(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: null,
    textDirection: TextDirection.ltr,
  );

  textPainter.layout();
  return textPainter.size;
}
