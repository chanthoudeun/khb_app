import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/widget/x_button.dart';
import '../../src/translation/app_locale.dart';
import '../utils/app_color.dart';
import '../utils/app_style.dart';
import '../utils/app_text.dart';

Future<void> showDialogPermision({
  required String title,
  required String content,
  required String actionText,
  required VoidCallback onActionPressed,
}) async {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      insetPadding: const EdgeInsets.all(50.0),
      shadowColor: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16.0),
            Text(
              content,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: XButton(
                    onPress: () {
                      Get.back();
                      onActionPressed();
                    },
                    child: Container(
                      decoration:
                          getBoxDecoration(background: AppColor.primary),
                      padding: EdgeInsets.all(12..d),
                      child: Center(
                        child: Text(
                          AppLocale.go.tr,
                          style: textDisplaySmall(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
