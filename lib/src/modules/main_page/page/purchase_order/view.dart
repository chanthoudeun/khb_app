import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_text.dart';
import 'package:khb_app/src/models/response/purchase_order_response/purchase_order_item.dart';
import 'package:khb_app/src/modules/main_page/page/purchase_order/widget/filter_bottom_sheet.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/widget/empty_data.dart';
import '../../../../../core/widget/loading_shimmer.dart';
import '../../../../../core/widget/x_paged_child_builder_delegate.dart';
import '../../../../translation/app_locale.dart';
import 'logic.dart';

class PurchaseOrderPage extends StatelessWidget {
  final logic = Get.put(PurchaseOrderLogic());
  final state = Get.find<PurchaseOrderLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          AppLocale.myOrder.tr,
          style: textDisplayMedium(), // Set text color as needed
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_alt,
              color: AppColor.primary,
              size: 30,
            ),
            onPressed: () {
              openFilter(context);
            },
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: RefreshIndicator(
          color: AppColor.primary,
          onRefresh: () async {
            state.purchaseOrderPagingController.value.refresh();
          },
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${AppLocale.totalAmount.tr} :",
                    style: textDisplaySmall(),
                  ),
                  Text(
                    " \$${state.total.toStringAsFixed(2)}",
                    style: textDisplayMedium(),
                  ),
                ],
              ),
              TabBar(
                labelColor: AppColor.primary,
                labelStyle: textDisplaySmall(
                  fontSize: 14.0.d,
                  fontWeight: FontWeight.w500,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelStyle: textDisplaySmall(
                    fontSize: 14.0.d,
                    fontWeight: FontWeight.w500,
                    color: AppColor.gray50),
                dividerColor: Colors.transparent,
                indicatorWeight: 2.0.d,
                indicatorColor: AppColor.primary,
                tabs: [
                  Tab(
                    text: AppLocale.onGoing.tr,
                  ),
                  Tab(
                    text: AppLocale.orderHistory.tr,
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.7,
                child: PagedListView<int, PurchaseOrderItem>.separated(
                  separatorBuilder: (context, index) => spaceV(),
                  pagingController: state.purchaseOrderPagingController.value,
                  builderDelegate: XPagedChildBuilderDelegate.list(
                    firstPageProgressIndicatorBuilder: (context) =>
                        LoadingShimmer.list(
                      dataCount: 10,
                      scrollDirection: Axis.vertical,
                      height: 112.0.d,
                    ),
                    noItemsFoundIndicatorBuilder: (context) =>
                        Center(child: EmptyData(customHeight: 600.0.d)),
                    itemBuilder: (context, item, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0.d),
                      child: _cardItem(
                        context,
                        orderNo: "${item.code}",
                        totalAmount: item.totalAmount,
                        status: AppLocale.completed.tr,
                        statusBackground: AppColor.primary,
                        orderedAt: item.orderedAt,
                        item: item,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardItem(BuildContext context,
      {String? orderNo,
      double? totalAmount,
      String? status,
      Color? statusBackground,
      DateTime? orderedAt,
      int? processing,
      PurchaseOrderItem? item}) {
    logic.checkStatusOrder(item!);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.5.d, vertical: 1.5.d),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${AppLocale.orderNo.tr.toUpperCase()} / ",
                    style: textDisplaySmall(),
                  ),
                  SizedBox(
                    child: Text(
                      "${orderNo}",
                      style: textDisplaySmall(),
                    ),
                  ),
                ],
              ),
              Text(
                "${"\$"} ${totalAmount?.toStringAsFixed(2)}",
                style: textDisplaySmall(),
              ),
            ],
          ),
          Text(
            DateFormat("dd MMMM, yyyy").format(orderedAt ?? DateTime.now()) ??
                "",
            style: textDisplaySmall(),
          ),
          Container(
            width: Get.width,
            constraints: BoxConstraints(
              maxHeight: 160.0.d,
              maxWidth: 700.0.d,
            ),
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _timeLineItem(
                  isFirst: true,
                  isShow: state.processingStatus == 1 ||
                      state.processingStatus == 2 ||
                      state.processingStatus == 3,
                  value: "1",
                  endValue: AppLocale.NEW.tr,
                ),
                _timeLineItem(
                  isShow: state.processingStatus == 2 ||
                      state.processingStatus == 3,
                  value: "2",
                  endValue: AppLocale.CONFIRM.tr,
                ),
                _timeLineItem(
                  isFirst: true,
                  isShow: state.processingStatus == 3,
                  value: "3",
                  endValue: AppLocale.COMPLETE.tr,
                ),
              ],
            ),
          ),
          Container(
            alignment: state.alignment,
            child: Text("${item?.orderStatus?.tr}"),
          )
        ],
      ),
    );
  }

  Widget _timeLineItem({
    bool isShow = true,
    bool isLast = false,
    bool isFirst = false,
    String? value,
    String? endValue,
  }) {
    return TimelineTile(
      axis: TimelineAxis.horizontal,
      alignment: TimelineAlign.start,
      isLast: isLast,
      isFirst: isFirst,
      indicatorStyle: IndicatorStyle(
          width: 30.0.d,
          height: 30.0.d,
          drawGap: true,
          indicator: Container(
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.red,
                ),
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$value',
                style: textDisplaySmall(),
              ),
            ),
          )),
      endChild: Text(
        "$endValue",
        style: textDisplayMedium(color: AppColor.primary),
      ),
    );
  }

  Widget _Child({
    String? text,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.amberAccent,
      constraints: const BoxConstraints(minHeight: 120),
      child: Center(
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
