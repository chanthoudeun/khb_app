import 'package:get/get.dart';
import 'package:khb_app/src/data/repo/purchase_order_repo.dart';

import 'logic.dart';

class PurchaseOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PurchaseOrderRepo());
    Get.lazyPut(() => PurchaseOrderLogic());
  }
}
