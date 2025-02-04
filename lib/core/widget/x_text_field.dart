import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src/translation/app_locale.dart';
import '../utils/app_color.dart';
import '../utils/app_text.dart';
import 'text_field_decoration.dart';

class XTextField extends StatelessWidget {
  XTextField({
    super.key,
    this.initialValue,
    this.enable = true,
    required this.onChanged,
    this.keyboardType,
    this.textInputAction,
    required this.hintText,
    this.maxLines,
    this.suffixIcon,
    this.maxLength,
    this.inputFormatters,
    this.hasShadow = true,
    this.borderColor,
    this.fillColor,
    this.onFieldSubmitted,
    this.textController,
    this.shouldValidate = false,
    this.validator,
  });

  factory XTextField.showOnly({
    required hintText,
    required suffixIcon,
  }) {
    return XTextField(
      initialValue: null,
      onChanged: null,
      hintText: hintText,
      enable: false,
      suffixIcon: suffixIcon,
      shouldValidate: false,
    );
  }

  final initialValue;
  final enable;
  final Function(String value)? onChanged;
  final Function(String value)? onFieldSubmitted;
  final hintText;
  final textInputAction;
  final keyboardType;
  final maxLines;
  final suffixIcon;
  final maxLength;
  final inputFormatters;
  final textController;
  final bool hasShadow;
  final Color? borderColor;
  final Color? fillColor;
  final bool shouldValidate;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.primary,
      initialValue: initialValue,
      controller: textController,
      enabled: enable,
      validator: validator ?? _defaultValidate,
      onChanged: enable == false ? null : (value) => onChanged!(value),
      decoration: getTextFieldDecoration(
        hintText: hintText,
        hasShadow: hasShadow,
        borderColor: borderColor,
        suffixIcon: suffixIcon,
        fillColor: fillColor,
      ),
      style:
          textDisplaySmall(color: Colors.black54, fontWeight: FontWeight.w400),
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
    );
  }

  String? _defaultValidate(String? value) {
    return shouldValidate
        ? value == null || value.isEmpty
            ? AppLocale.valueCantBeEmpty.tr
            : null
        : null;
  }
}
