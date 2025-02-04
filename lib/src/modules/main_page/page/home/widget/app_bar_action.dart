import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/gen/assets.gen.dart';
import 'package:khb_app/src/route/app_navigation.dart';

import '../../../../../../core/app/logic.dart';
import '../../../../../../core/utils/app_color.dart';

class AppBarAction extends StatelessWidget {
  AppBarAction({super.key});

  final logic = Get.find<AppLogic>;
  final state = Get.find<AppLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(AppNavigation.NOTIFICATIOND);
          },
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: SvgPicture.asset(
              Assets.svg.notification,
              width: 25,
            ),
          ),
        ),
        GetBuilder<AppLogic>(builder: (logic) {
          return GestureDetector(
            onTap: () async {
              var res = await Get.toNamed(AppNavigation.NOTIFICATIOND);
              if (res == true) {
                // logicHome.getAllProduct();
                // Get.find<MyFavoritesLogic>().fetchListFavorite();
              }
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  child: SvgPicture.asset(
                    Assets.svg.shoppingCart,
                    width: 30,
                  ),
                ),
                state.countProduct.value != 0
                    ? Positioned(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xffc32c37),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Center(
                                child: Text(
                              "${state.countProduct}",
                              style: const TextStyle(
                                fontSize: 10,
                                color: AppColor.white,
                              ),
                            )),
                          ),
                        ),
                      )
                    : Container(
                        width: 20,
                        height: 20,
                      ),
              ],
            ),
          );
        }),
        SizedBox(
          width: 1.5.d,
        )
      ],
    );
  }
}
