import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_text.dart';
import 'package:khb_app/core/widget/x_button.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/widget/x_drop_down_search.dart';
import '../../../../../../core/widget/x_label.dart';
import '../../../../../models/response/status_response/status_response.dart';
import '../../../../../translation/app_locale.dart';
import '../logic.dart';

openFilter(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (context) => FilterBottomSheet(),
  );
  // state.filterStatus = null;
}

class FilterBottomSheet extends StatelessWidget {
  FilterBottomSheet({super.key});

  final logic = Get.put(PurchaseOrderLogic());
  final state = Get.find<PurchaseOrderLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PurchaseOrderLogic>(builder: (logic) {
      return SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0.d, vertical: 15.0.d),
          height: Get.height * 0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2.0.d),
                topRight: Radius.circular(2.0.d)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocale.filter.tr, style: textDisplaySmall()),
                  SizedBox(height: 5),
                  XLabel(
                    label: AppLocale.startDate.tr,
                    labelSize: TextStyle(color: Colors.grey[900], fontSize: 16),
                    child: XButton(
                      onPress: () =>
                          logic.openFilterScheduleDatePicker(context),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              DateFormat('dd MM yyyy')
                                  .format(logic.state.startDate),
                              style: textDisplaySmall(),
                            ),
                            Icon(
                              Icons.calendar_month_outlined,
                              color: AppColor.primary,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  XLabel(
                    label: AppLocale.endDate.tr,
                    labelSize: TextStyle(color: Colors.grey[900], fontSize: 16),
                    child: XButton(
                      onPress: () =>
                          logic.openFilterScheduleDatePickerEndDate(context),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ]),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              DateFormat('dd MM yyyy')
                                  .format(logic.state.endDate),
                              style: textDisplaySmall(),
                            ),
                            Icon(
                              Icons.calendar_month_outlined,
                              color: AppColor.primary,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  XLabel(
                    label: AppLocale.status.tr,
                    labelSize: TextStyle(color: Colors.grey[900], fontSize: 16),
                    child: XDropDownSearch<StatusResponse>(
                      items: state.statusList,
                      onChanged: (value) {
                        state.selectedStatus.value = value ?? StatusResponse();
                        state.orderStatus.value =
                            state.selectedStatus.value.value ?? "";
                      },
                      itemAsString: (StatusResponse status) =>
                          status.name ?? "",
                      label: AppLocale.status.tr,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: XButton(
                          onPress: () async {
                            Get.back();
                            state.purchaseOrderPagingController.value.refresh();
                          },
                          toolTip: AppLocale.filter.tr,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(AppLocale.filter.tr,
                                  style: textDisplayMedium()),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
