import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/widget/x_button.dart';

import '../../../gen/assets.gen.dart';
import '../../src/route/app_navigation.dart';
import '../../src/translation/app_locale.dart';
import '../utils/app_color.dart';
import '../utils/app_style.dart';
import '../utils/app_text.dart';

class EmptyData extends StatelessWidget {
  EmptyData({
    super.key,
    this.sizeErrorWidget,
    this.message,
    this.isNeedShowFullScreen = false,
    this.isNeedRestart = false,
    this.customWidgetError,
    this.customHeight,
  });

  final double? sizeErrorWidget;
  final double? customHeight;
  final String? message;
  final Widget? customWidgetError;
  final bool isNeedShowFullScreen;
  final bool isNeedRestart;

  @override
  Widget build(BuildContext context) {
    var content = Container(
      decoration: getBoxDecoration(background: Colors.white),
      height: isNeedShowFullScreen ? Get.height * 0.85 : customHeight,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox.square(
            //   dimension: (sizeErrorWidget ?? 100.0.d),
            //   child: customWidgetError ??
            //       SvgPicture.asset(
            //         Assets.svg.emptyData,
            //         fit: BoxFit.contain,
            //       ),
            // ),
            spaceV(size: 5.0.d),
            Text(
              message ?? AppLocale.noResultFound.tr,
              textAlign: TextAlign.center,
              style: textDisplaySmall(
                  color: AppColor.primary50, fontWeight: FontWeight.bold),
            ),
            // if (isNeedRestart)
            // Column(
            //   children: [
            //     spaceV(size: 10.0.d),
            //     Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         PulseAnimation(
            //           animateType: AnimateType.loop,
            //           child: Icon(
            //             Icons.loop,
            //             color: AppColor.primary50,
            //             size: 20.0.d,
            //           ),
            //         ),
            //         spaceH(),
            //         Text(
            //           AppLocale.tryRestartApp.tr,
            //           style: textDisplaySmall(color: AppColor.primary50),
            //         ),
            //       ],
            //     ),
            //   ],
            // )
          ]),
    );

    // if (isNeedRestart) {
    //   return XButton(
    //     onPress: () => Get.offAllNamed(AppNavigation.SPLASH_SCREEN),
    //     child: Padding(
    //       padding: EdgeInsets.all(10.0.d),
    //       child: content,
    //     ),
    //   );
    // }
    return content;
  }
}
