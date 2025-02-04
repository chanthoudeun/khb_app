import 'package:flutter/material.dart';
import 'package:khb_app/core/utils/app_color.dart';
import 'package:khb_app/core/utils/app_ext.dart';

import '../utils/app_text.dart';

class XLabel extends StatelessWidget {
  const XLabel({
    Key? key,
    required this.label,
    required this.child,
    this.errorText,
    this.require = false,
    this.labelSubWidget,
    this.action,
    this.enable = true,
    this.labelSize,
    this.gap,
  }) : super(key: key);

  final Widget child;
  final String label;
  final String? errorText;
  final Widget? labelSubWidget;
  final bool require;
  final bool enable;
  final Widget? action;
  final TextStyle? labelSize;
  final double? gap;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enable,
      child: Opacity(
        opacity: enable ? 1 : 0.5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: labelSize ?? textDisplaySmall(),
                ),
                if (require)
                  Text(
                    "*",
                    style: textDisplaySmall(color: AppColor.red),
                  ),
                SizedBox(
                  width: 1.0.d,
                ),
                if (labelSubWidget != null) labelSubWidget!,
                if (action != null) const Spacer(),
                if (action != null) action!,
              ],
            ),
            if (require == false)
              SizedBox(
                height: 0.5.d,
              ),
            SizedBox(
              height: 0.5.d,
            ),
            child,
            if (errorText != null)
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 10),
                child: Text(
                  errorText!,
                  style: textDisplaySmall(color: AppColor.red),
                ),
              )
          ],
        ),
      ),
    );
  }
}
