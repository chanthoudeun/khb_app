import 'package:get/get.dart';
import 'package:khb_app/src/data/local/product_local.dart';
import '../../src/data/local/user_local.dart';
import '../local_config/hive_manager.dart';
import '../network_config/interceptor/api_interceptor.dart';
import '../utils/app_log.dart';
import 'logic.dart';

initServices() async {
  xLog(message: "Starting services ⚙️");

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.put(HiveManager.init(), permanent: true);
  xLog(message: "DB Done ✅");
  Get.put(AppLogic(), permanent: true);
  xLog(message: "Theme Done ✅");
  xLog(message: "App Middleware Done ✅");
  // Get.put(NotificationLogic(), permanent: true);
  xLog(message: "Notification Done ✅");
  Get.put(ApiInterceptor(), permanent: true);
  xLog(message: "ApiInterceptor Done ✅");
  // Get.put(XNetworkImageCacheManager.instance, permanent: true);
  xLog(message: "XNetworkImageCacheManager Done ✅");

  // await SettingLocal().getData();
  // await SearchHistoryLocal().getData();
  await UserLocal().getData();
  await ProductLocal().getFavoriteList();

  // Only call clearSavedSettings() during testing to reset internal values.
  // await Upgrader.clearSavedSettings(); // REMOVE this for release builds

  xLog(message: "All services started ✅");
}
