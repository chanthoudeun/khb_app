import 'package:get/get.dart';
import 'package:khb_app/src/data/repo/profile_repo.dart';

import 'logic.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileRepo());
    Get.lazyPut(() => ProfileLogic());
  }
}
