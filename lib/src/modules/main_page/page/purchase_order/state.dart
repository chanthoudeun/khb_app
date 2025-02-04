import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:khb_app/src/models/response/purchase_order_response/purchase_order_item.dart';

class PurchaseOrderState {
  var purchaseOrderPagingController =
      PagingController<int, PurchaseOrderItem>(firstPageKey: 1).obs;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  var orderStatus = "".obs;
  var total = 0.0.obs;
  int processingStatus = 3;
  Alignment alignment = Alignment.centerLeft;
}
