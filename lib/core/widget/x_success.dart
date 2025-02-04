import '../../gen/assets.gen.dart';
import 'package:get/get.dart';

import '../utils/app_ext.dart';
import 'package:flutter/material.dart';

class xSuccess extends StatelessWidget {
  const xSuccess({Key? key, this.size = 100, this.color}) : super(key: key);

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.7,
      // child: Image.asset(
      //   Assets.gif.success.path,
      //   width: 100.0.d,
      //   fit: BoxFit.fitWidth,
      // ),
    );
  }
}
