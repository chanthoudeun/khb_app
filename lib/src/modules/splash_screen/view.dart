import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_color.dart';
import 'package:khb_app/core/utils/app_ext.dart';

import '../../../core/utils/app_style.dart';
import '../../../gen/assets.gen.dart';
import 'logic.dart';

class SplashScreenPage extends StatelessWidget {
  final logic = Get.put(SplashScreenLogic());
  final state = Get.find<SplashScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenLogic>(builder: (logic) {
      return Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: Get.height * 0.8,
              width: Get.width,
              child: Image.asset(
                Assets.image.cbSupreme.path,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.d),
                child: Column(
                  children: [
                    spaceV(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 45.0.d,
                        right: 45.0.d,
                        bottom: 50.0.d,
                      ),
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 1000),
                        builder: (context, value, child) {
                          return LinearProgressIndicator(
                            value: value,
                            borderRadius: BorderRadius.circular(16.0.d),
                            backgroundColor: Colors.white,
                            color: AppColor.primary,
                            minHeight: 8.0.d,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
