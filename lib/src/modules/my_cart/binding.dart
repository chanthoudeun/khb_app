import 'package:get/get.dart';

import 'logic.dart';

class MyCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartLogic());
  }
}
