import 'package:get/get.dart';

import 'logic.dart';

class CheckOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutLogic());
  }
}
