import 'package:flutter/material.dart';

import '../utils/app_ext.dart';
import '../utils/app_style.dart';
import '../utils/app_text.dart';
import 'x_button.dart';

class XSection extends StatefulWidget {
  const XSection(
      {Key? key,
      required this.labelWidget,
      required this.child,
      this.canCollapse = true,
      this.isOpen = false,
      this.isNeedIcon = true,
      this.onPress,
      this.require = false})
      : super(key: key);
  final Widget labelWidget;
  final Widget child;
  final bool canCollapse;
  final bool require;
  final bool isNeedIcon;

  final bool isOpen;
  final GestureTapCallback? onPress;

  @override
  State<XSection> createState() => _XSectionState();
}

class _XSectionState extends State<XSection> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        XButton(
          onPress: widget.onPress ??
              () {
                setState(() {
                  if (widget.canCollapse) {
                    visible = !visible;
                  }
                });
              },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.labelWidget,
              if (widget.require)
                Text("*",
                    style: textDisplaySmall(
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.error)),
              if (widget.isNeedIcon == true)
                Icon(
                  visible
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_right_rounded,
                  size: 30.0.d,
                ),
            ],
          ),
        ),
        spaceV(size: 10.0.d),
        Visibility(
          maintainState: true,
          visible:
              // visible,
              widget.onPress != null && widget.isOpen ? widget.isOpen : visible,
          child: widget.child,
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    visible = widget.isOpen;
  }
}
