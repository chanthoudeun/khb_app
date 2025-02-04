import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_color.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/src/modules/main_page/page/home/view.dart';
import 'package:khb_app/src/modules/main_page/page/profile/view.dart';
import 'package:khb_app/src/modules/main_page/page/purchase_order/view.dart';

import 'logic.dart';

class MainPagePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final logic = Get.put(MainPageLogic());
  final state = Get.find<MainPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: Colors.white,
        key: scaffoldKey,
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: state.pageController.value,
          children: [
            HomePage(),
            PurchaseOrderPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          elevation: 2,
          onTap: (value) => logic.onTapNav(value),
          tabBuilder: (index, isActive) {
            return Padding(
              padding: EdgeInsets.zero,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(state.icons[index]),
                  Padding(
                    padding: EdgeInsets.only(top: 6.0.d),
                    child: Text(
                      state.labelList[index].tr,
                      maxLines: 1,
                      style: TextStyle(
                        color: isActive ? AppColor.primary : AppColor.gray50,
                        fontWeight:
                            isActive ? FontWeight.w700 : FontWeight.w500,
                        fontSize: 10.0.d,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          backgroundColor: Colors.white,
          shadow: BoxShadow(
            color: Color(0x14000000),
            offset: Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 0,
          ),
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          activeIndex: state.currentIndex.value,
          itemCount: 3,
          gapWidth: 0,
          height: 80.0.d,
          splashColor: AppColor.primary25,
          hideAnimationCurve: Curves.easeOut,
          scaleFactor: 0,
        ),
      );
    });
  }
}
