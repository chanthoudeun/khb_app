import 'package:get/get.dart';
import 'package:khb_app/src/data/local/product_local.dart';
import 'package:khb_app/src/data/repo/category_repo.dart';
import 'package:khb_app/src/data/repo/product_repo.dart';

import 'logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductLocal());
    Get.lazyPut(() => CategoryRepo());
    Get.lazyPut(() => ProductRepo());
    Get.lazyPut(() => HomeLogic());
  }
}
