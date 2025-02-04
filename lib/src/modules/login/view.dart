import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_style.dart';
import 'package:khb_app/core/widget/x_button.dart';

import '../../../core/widget/x_text_field.dart';
import '../../../gen/assets.gen.dart';
import '../../translation/app_locale.dart';
import 'logic.dart';

class LoginPage extends StatelessWidget {
  final logic = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;
  final GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _body(context),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20..d),
      child: Form(
        key: formKeyLogin,
        child: Column(
          children: [
            SizedBox(
              height: 5.0.d,
            ),
            XTextField(
              onChanged: (value) {
                state.userNameController.text = value;
              },
              hintText: "${AppLocale.userName.tr}",
            ),
            spaceV(),
            XTextField(
              onChanged: (value) {
                state.passwordController.text = value;
              },
              hintText: "${AppLocale.password.tr}",
            ),

            // XTextField(
            //   prefixIcon: Icon(Icons.update),
            //   shouldValidate: true,
            //   borderRadius: BorderRadius.circular(15),
            //   validator: (value) => state.userNameController.text == ""
            //       ? "${AppLocale.userName.tr} ${AppLocale.cantBeEmpty.tr}"
            //       : null,
            //   controller: state.userNameController,
            //   hintText: AppLocale.userName.tr,
            // ),
            // spaceV(),
            // Obx(() {
            //   return XTextField(
            //     borderRadius: BorderRadius.circular(15),
            //     // prefixIcon: Image.asset(Assets.image.passwordIcon.path),
            //     keyboardType: TextInputType.visiblePassword,
            //     obscureText: state.isPasswordObscureText.value,
            //     hasShadow: false,
            //     shouldValidate: true,
            //     maxLine: 1,
            //     validator: (value) => state.passwordController.text == ""
            //         ? "${AppLocale.password.tr} ${AppLocale.cantBeEmpty.tr}"
            //         : null,
            //     controller: state.passwordController,
            //     hintText: AppLocale.password.tr,
            //     suffixIcon: GestureDetector(
            //       onTap: () {
            //         state.isPasswordObscureText.value =
            //             !state.isPasswordObscureText.value;
            //       },
            //       child: Icon(
            //         state.isPasswordObscureText.value
            //             ? Icons.visibility
            //             : Icons.visibility_off,
            //       ),
            //     ),
            //   );
            // }),
            // SizedBox(height: 20.h),
            spaceV(),
            XButton(
              child: Text(AppLocale.login.tr),
              onPress: () async {
                if (formKeyLogin.currentState!.validate()) {
                  await logic.login();
                }
              },
            ),
            // _contactSupport(context),
            // const ChangeLanguageWidget(),
          ],
        ),
      ),
    );
  }
}
