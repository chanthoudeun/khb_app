import 'package:get/get.dart';

import 'logic.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainPageLogic());
  }
}
