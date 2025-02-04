import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/app/logic.dart';
import '../../../core/local_config/storage_key.dart';
import '../../../core/utils/app_log.dart';
import '../../models/response/user_response/user_response.dart';

class UserLocal {
  Future<Box<UserResponse>> getBox() async {
    if (!Hive.isBoxOpen(StorageKey.userBox)) {
      return await Hive.openBox<UserResponse>(StorageKey.userBox);
    }
    return Hive.box<UserResponse>(StorageKey.userBox);
  }

  Future<UserResponse?> getData() async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return null;
    }
    UserResponse? data = await box.get(StorageKey.userData);
    if (data == null) {
      await setData(UserResponse());
      data = await box.get(StorageKey.userData);
    }
    Get.find<AppLogic>().state.userResponse.value = data!;
    Get.find<AppLogic>().update();
    xPrettyLog(
        message: "getData\n"
            "${Get.find<AppLogic>().state.userResponse.value.user}\n"
            "${Get.find<AppLogic>().state.userResponse.value.accessToken}");

    return data;
  }

  Future<void> setData(UserResponse data) async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return;
    }
    await box.put(StorageKey.userData, data);
    Get.find<AppLogic>().state.userResponse.value = data;
    Get.find<AppLogic>().update();
  }

  Future<void> removeData() async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return;
    }
    await box.clear();
    Get.find<AppLogic>().state.userResponse = UserResponse().obs;
  }
}
