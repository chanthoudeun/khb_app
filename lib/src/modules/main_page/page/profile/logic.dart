import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:khb_app/src/data/repo/profile_repo.dart';
import 'package:khb_app/src/modules/main_page/page/profile/widget/show_modal_bottom_sheet.dart';
import 'package:khb_app/src/route/app_navigation.dart';

import '../../../../../core/app/logic.dart';
import '../../../../../core/local_config/hive_manager.dart';
import '../../../../translation/app_locale.dart';
import 'state.dart';

class ProfileLogic extends GetxController {
  final ProfileRepo _profileRepo = Get.find<ProfileRepo>();

  final ProfileState state = ProfileState();

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getById();
  }

  getById() async {
    try {
      var user = Get.find<AppLogic>().state.userResponse.value.user;
      state.screenStatus.value = RxStatus.loading();
      var result = await _profileRepo.getUserProfile(
          id: user?.employeeFirm?.outletId ?? 0);
      if (result != null) {
        state.userProfile.value = result;
        update();
      }
      state.screenStatus.value = RxStatus.success();
    } catch (e) {
      EasyLoading.showError(AppLocale.error.tr);
    } finally {
      state.screenStatus.value = RxStatus.success();
    }
  }

  onDeleteAccount() async {
    try {
      var user = Get.find<AppLogic>().state.userResponse.value.user;
      var result = await _profileRepo.deleteUserAccount(userId: user?.id ?? 0);
      if (result != null) {
        EasyLoading.showSuccess(AppLocale.success.tr);
      }
    } catch (e) {
      EasyLoading.showError(AppLocale.error.tr);
    }
  }

  Future<void> logout() async {
    await HiveManager.clearAllBox();
    Get.offAllNamed(AppNavigation.LOGIN);
  }

  openFilter({
    required BuildContext context,
    Function()? onPress,
  }) async {
    await showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxHeight: Get.height * 0.8,
        minHeight: Get.height * 0.6,
      ),
      useSafeArea: true,
      isScrollControlled: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      builder: (context) => FilterBottomSheetProfile(
          onPress: onPress,
          controller: state.controller,
          formKey: state.formKey2),
    );
    // state.filterStatus = null;
  }
}
