import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_text.dart';
import 'package:khb_app/core/widget/x_button.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/widget/x_label.dart';
import '../../../../../../core/widget/x_text_field.dart';
import '../../../../../translation/app_locale.dart';
import '../../purchase_order/logic.dart';

class FilterBottomSheetProfile extends StatelessWidget {
  FilterBottomSheetProfile(
      {super.key,
      required this.onPress,
      required this.controller,
      required this.formKey});

  final logic = Get.find<PurchaseOrderLogic>();

  void Function()? onPress;
  TextEditingController? controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PurchaseOrderLogic>(builder: (logic) {
      return SingleChildScrollView(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 2.0.d,
            right: 2.0.d),
        child: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.5.d, vertical: 2.5.d),
            // height: Get.height * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(2.0.d)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(AppLocale.areYouSrueDeleteAccount.tr,
                    style: textDisplaySmall()),
                SizedBox(height: 15),
                XLabel(
                  label: AppLocale.confirm.tr,
                  labelSize: TextStyle(fontSize: 15),
                  child: XTextField(
                    hintText: AppLocale.InputYourAccountNumber.tr,
                    textController: controller,
                    validator: (value) => controller?.text == ""
                        ? "${AppLocale.InputYourAccountNumber.tr} ${AppLocale.cantBeEmpty.tr}"
                        : null,
                    onChanged: (String value) {
                      controller?.text = value;
                    },
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: XButton(
                        onPress: onPress,
                        toolTip: AppLocale.confirm.tr,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              AppLocale.confirm.tr,
                              style: textDisplayMedium(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: XButton(
                        onPress: () {
                          Get.back();
                        },
                        toolTip: AppLocale.cancel.tr,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: AppColor.grad30,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(AppLocale.cancel.tr,
                                style: textDisplayMedium()),
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
    });
  }
}
