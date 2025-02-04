import 'package:get/get.dart';

import 'logic.dart';

class MyFavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyFavoritesLogic());
  }
}
