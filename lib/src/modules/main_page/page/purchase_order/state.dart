import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:khb_app/src/models/response/purchase_order_response/purchase_order_item.dart';
import 'package:khb_app/src/models/response/status_response/status_response.dart';

class PurchaseOrderState {
  var purchaseOrderPagingController =
      PagingController<int, PurchaseOrderItem>(firstPageKey: 1).obs;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  var orderStatus = "".obs;
  var total = 0.0.obs;
  int processingStatus = 3;
  Alignment alignment = Alignment.centerLeft;

  var selectedStatus = StatusResponse().obs;

  final List<StatusResponse> statusList = [
    StatusResponse(name: "ALL", value: "ALL"),
    StatusResponse(name: "NEW", value: "NEW"),
    StatusResponse(name: "CONFIRM", value: "CONFIRM"),
    StatusResponse(name: "IN PROGRESS", value: "IN-PROGRESS"),
    StatusResponse(name: "COMPLETE", value: "COMPLETE"),
    StatusResponse(name: "HOLD", value: "HOLD"),
    StatusResponse(name: "CANCEL", value: "CANCEL"),
    StatusResponse(name: "REJECTED", value: "REJECTED"),
  ];
}
