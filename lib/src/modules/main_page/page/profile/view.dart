import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/app/logic.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_text.dart';
import 'package:khb_app/core/widget/x_button.dart';
import 'package:khb_app/src/route/app_navigation.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_const.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/widget/dashed_circle.dart';
import '../../../../translation/app_locale.dart';
import 'logic.dart';

class ProfilePage extends StatelessWidget {
  final logic = Get.put(ProfileLogic());
  final state = Get.find<ProfileLogic>().state;
  final user = Get.find<AppLogic>().state.userResponse.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainBackground,
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(AppLocale.profile.tr, style: textDisplayMedium()),
      ),
      body: Padding(
        padding: getPaddingScreen(),
        child: Column(
          children: [
            _myProfile(context),
            spaceV(),
            _body(context),
            spaceV(),
            XButton(
              onPress: () => logic.logout(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0.d),
                width: Get.width,
                decoration: getBoxDecoration(
                  borderRadius: BorderRadius.circular(14.0.d),
                  background: AppColor.primary,
                ),
                child: Center(
                  child: Text(
                    AppLocale.logout.tr,
                    style: textDisplaySmall(
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.d),
          child: Text(
            AppLocale.general.tr,
            style: textDisplaySmall(),
          ),
        ),
        spaceV(),
        _information(context),
        spaceV(),
        _myFavorite(context),
      ],
    );
  }

  Widget _myFavorite(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: getBoxDecoration(
              hasShadow: true,
            ),
            child: Column(
              children: [
                XButton(
                  onPress: () {
                    Get.toNamed(AppNavigation.MY_FAVORITES);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0.d,
                      vertical: 15.0.d,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite),
                              SizedBox(width: 1.5.d),
                              Text(
                                AppLocale.myFavorite.tr,
                                style: textDisplaySmall(),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Specify your color here
                        width: 1.0, // Specify the width of the border
                      ),
                    ),
                  ),
                ),
                XButton(
                  onPress: () {
                    Get.toNamed(AppNavigation.TERMCONDITION);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0.d,
                      vertical: 15.0.d,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.article),
                              SizedBox(width: 1.5.d),
                              Text(
                                AppLocale.termCondition.tr,
                                style: textDisplaySmall(),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Specify your color here
                        width: 1.0, // Specify the width of the border
                      ),
                    ),
                  ),
                ),
                XButton(
                  onPress: () {
                    logic.openFilter(
                        context: context,
                        onPress: () async {
                          if (logic.state.formKey2.currentState!.validate() &&
                                  logic.state.controller.text == "yes" ||
                              logic.state.controller.text == "Yes" ||
                              logic.state.controller.text == "YES" ||
                              logic.state.controller.text == "បាទ" ||
                              logic.state.controller.text == "y") {
                            await logic.onDeleteAccount();
                            logic.state.controller.text = "";
                            Get.back();
                          }
                        });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0.d,
                      vertical: 15.0.d,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.delete),
                              SizedBox(width: 1.5.d),
                              Text(
                                AppLocale.deleteMyAccount.tr,
                                style: textDisplaySmall(),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _information(BuildContext context) {
    return GetBuilder<ProfileLogic>(builder: (logic) {
      return Row(
        children: [
          Expanded(
            child: Container(
              decoration: getBoxDecoration(
                hasShadow: true,
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.0.d, vertical: 15.0.d),
                child: Column(
                  children: [
                    Row(children: [
                      Icon(Icons.phone),
                      SizedBox(width: 1.5.d),
                      Obx(() {
                        return Text(
                          state.userProfile.value.phone ?? "",
                          style: textDisplaySmall(),
                        );
                      })
                    ]),
                    SizedBox(
                      height: 1.0.d,
                    ),
                    Row(children: [
                      Icon(Icons.pin_drop_outlined),
                      SizedBox(width: 1.5.d),
                      Obx(() {
                        return Expanded(
                          child: state.userProfile.value != null
                              ? Text(
                                  Get.locale == Locale(AppConst.khmerCode)
                                      ? "${state.userProfile.value?.geoCity?.locale?.km?.name ?? ""},"
                                          "${state.userProfile.value?.geoDistrict?.locale?.km?.name ?? ""},"
                                          "${state.userProfile.value?.geoCommune?.locale?.km?.name},"
                                          "${state.userProfile.value?.geoVillage?.locale?.km?.name}"
                                      : "${state.userProfile.value?.geoCity?.locale?.en?.name ?? ""},"
                                          "${state.userProfile.value?.geoDistrict?.locale?.en?.name ?? ""},"
                                          "${state.userProfile.value?.geoCommune?.locale?.en?.name ?? ""},"
                                          "${state.userProfile.value?.geoVillage?.locale?.en?.name ?? ""}",
                                )
                              : Container(),
                        );
                      })
                    ]),
                    SizedBox(
                      height: 1.0.d,
                    ),
                    Row(children: [
                      Icon(Icons.person),
                      SizedBox(width: 1.5.d),
                      Text(
                        user?.user?.dealerDetail?.code ?? "",
                        style: textDisplaySmall(),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _myProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.0.d),
      child: Row(
        children: [
          DashedCircle(
            color: AppColor.primary,
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(
                state.userProfile.value.logo ??
                    "https://st3.depositphotos.com/19428878/37071/v/450/depositphotos_370714622-stock-illustration-businessman-icon-vector-male-avatar.jpg",
              ),
            ),
          ),
          spaceH(size: 30.0.d),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.user?.fullName ?? "",
                style: textDisplayMedium(),
              ),
              Text(
                user.user?.code ?? "",
                style: textDisplayMedium(),
              )
            ],
          )
        ],
      ),
    );
  }
}
