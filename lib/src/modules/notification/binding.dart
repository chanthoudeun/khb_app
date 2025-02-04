import 'package:get/get.dart';
import 'package:khb_app/src/data/repo/notification_repo.dart';

import 'logic.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationRepo());
    Get.lazyPut(() => NotificationLogic());
  }
}
