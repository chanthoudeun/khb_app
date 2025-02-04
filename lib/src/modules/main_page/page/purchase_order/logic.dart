import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:khb_app/src/data/repo/purchase_order_repo.dart';
import 'package:khb_app/src/models/response/purchase_order_response/purchase_order_item.dart';

import '../../../../../core/app/logic.dart';
import '../../../../../core/utils/x_paging_data_handler.dart';
import 'state.dart';

class PurchaseOrderLogic extends GetxController
    with GetSingleTickerProviderStateMixin {
  final PurchaseOrderRepo _orderRepo = Get.find<PurchaseOrderRepo>();
  final PurchaseOrderState state = PurchaseOrderState();
  late TabController tabController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController =
        TabController(length: 2, vsync: this, animationDuration: Duration.zero);
    state.startDate = DateTime.now().subtract(Duration(days: 7));
    state.startDate = DateTime.now().subtract(Duration(days: 7));
    state.purchaseOrderPagingController.value.addPageRequestListener((pageNo) {
      getPurchaseOrderList(
        pageNo: pageNo,
      );
    });
  }

  void checkStatusOrder(PurchaseOrderItem item) {
    switch (item.orderStatus) {
      case "NEW":
        state.processingStatus = 1;
        state.alignment = Alignment.centerLeft;
        break;
      case "CONFIRM":
        state.processingStatus = 2;
        state.alignment = Alignment.center;
      case "IN-PROGRESS":
        state.processingStatus = 2;
        state.alignment = Alignment.center;
      case "HOLD":
        state.processingStatus = 2;
        state.alignment = Alignment.center;
      case "CANCEL":
        state.processingStatus = 2;
        state.alignment = Alignment.center;
        break;
      case "REJECTED":
        state.processingStatus = 3;
        state.alignment = Alignment.center;
        break;
      case "COMPLETE":
        state.processingStatus = 3;
        state.alignment = Alignment.centerRight;
        break;
      default:
        break;
    }
  }

  void getPurchaseOrderList({
    required int pageNo,
    bool isRefresh = false,
  }) async {
    final dateRange = _calculateDateRange();
    var user = Get.find<AppLogic>().state.userResponse.value.user;
    await xPagingDataHandler(
      pagingController: state.purchaseOrderPagingController.value,
      function: _orderRepo.getAll(
        pageNo: pageNo,
        startCreatedAt: dateRange["startCreatedAt"],
        endCreatedA: dateRange["endCreatedAt"],
        search: user?.code,
        orderStatus: state.orderStatus.value,
        dealerId: user?.employeeFirm?.dealerId,
        outletId: user?.employeeFirm?.outletId,
      ),
      pageNo: pageNo,
      isRefresh: isRefresh,
    );
  }

  Map<String, String> _calculateDateRange() {
    DateTime nowTime = DateTime.now();

    //start date and back day to 7 day
    String startDateString = DateFormat('yyyy-MM-dd').format(state.startDate);

    //End date will be current dat. first init
    String nowString = DateFormat('yyyy-MM-dd').format(state.endDate);

    return {
      "startCreatedAt": "${startDateString}T17:00:00.000Z",
      "endCreatedAt": "${nowString}T16:59:59.999Z",
    };
  }
}
