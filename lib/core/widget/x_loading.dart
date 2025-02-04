import '../../gen/assets.gen.dart';
import 'package:get/get.dart';

import '../utils/app_ext.dart';
import 'package:flutter/material.dart';

class xLoading extends StatelessWidget {
  const xLoading({Key? key, this.size = 100, this.color}) : super(key: key);

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.7,
      child: Text("fff"),
      // child: Image.asset(
      //   Assets.gif.cmrtLoading.path,
      //   width: 100.0.d,
      //   fit: BoxFit.fitWidth,
      // ),
    );
  }
}
