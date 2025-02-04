import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/widget/x_button.dart';
import 'package:khb_app/src/route/app_navigation.dart';
import 'package:khb_app/src/translation/app_locale.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/app_color.dart';
import '../../../gen/assets.gen.dart';
import 'logic.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final logic = Get.put(WelcomeLogic());

  final state = Get.find<WelcomeLogic>().state;

  final PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      left: false,
      right: false,
      maintainBottomViewPadding: false,
      minimum: EdgeInsets.zero,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                Image.asset(
                  Assets.image.cbSupreme.path,
                  fit: BoxFit.cover,
                  height: Get.height,
                  width: Get.width,
                ),
                Image.asset(
                  Assets.image.cbSupreme.path,
                  fit: BoxFit.cover,
                  height: Get.height,
                  width: Get.width,
                ),
              ],
            ),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: _pageController, // PageController
              count: 3, // Number of pages
              effect: ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: AppColor.primary,
                  dotColor: AppColor.primary25),
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
          Center(
            child: XButton(
              onPress: () {
                Get.toNamed(AppNavigation.LOGIN);
              },
              child: Text("${AppLocale.login.tr}"),
            ),
          ),
        ],
      ),
    );
  }
}
