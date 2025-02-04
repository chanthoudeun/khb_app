import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../core/app/logic.dart';
import '../../route/app_navigation.dart';
import 'state.dart';

class SplashScreenLogic extends GetxController
    with GetSingleTickerProviderStateMixin {
  final SplashScreenState state = SplashScreenState();

  late AnimationController controller;

  @override
  void onInit() async {
    super.onInit();
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    await authorizationCheck();
    update();
  }

  authorizationCheck() async {
    await Future.delayed(Duration(seconds: 1));

    var userResponse = Get.find<AppLogic>().state.userResponse.value;
    if ((userResponse.accessToken ?? "") != "" ||
        (userResponse.user?.id ?? 0) != 0) {
      Get.offAllNamed(AppNavigation.MAINPAGE);
    } else {
      Get.offAllNamed(AppNavigation.WELCOME);
    }
  }
}
