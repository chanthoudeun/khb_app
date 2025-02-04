import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_text.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_const.dart';
import '../../../core/utils/app_style.dart';
import '../../../core/widget/empty_data.dart';
import '../../../core/widget/loading_shimmer.dart';
import '../../../core/widget/x_network_image.dart';
import '../../../core/widget/x_paged_child_builder_delegate.dart';
import '../../models/response/notification_response/app_notification.dart';
import '../../translation/app_locale.dart';
import 'logic.dart';

class NotificationPage extends StatelessWidget {
  final logic = Get.put(NotificationLogic());
  final state = Get.find<NotificationLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainBackground,
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(AppLocale.notification.tr, style: textDisplaySmall()),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.black,
          ),
          onPressed: () {
            Get.back(
              result: true,
            );
          },
        ),
      ),
      body: RefreshIndicator(
        color: AppColor.primary,
        onRefresh: () async {
          state.notificationPagingController.value.refresh();
        },
        child: Padding(
          padding: getPaddingScreen(),
          child: SizedBox(
            height: Get.height * 0.85,
            child: PagedListView<int, AppNotification>.separated(
              separatorBuilder: (context, index) => spaceV(),
              pagingController: state.notificationPagingController.value,
              builderDelegate: XPagedChildBuilderDelegate.list(
                firstPageProgressIndicatorBuilder: (context) =>
                    LoadingShimmer.list(
                  dataCount: 10,
                  scrollDirection: Axis.vertical,
                  height: 112.0.d,
                ),
                noItemsFoundIndicatorBuilder: (context) =>
                    Center(child: EmptyData(customHeight: 600.0.d)),
                itemBuilder: (context, item, index) {
                  String formattedDate = DateFormat('dd-MM-yyyy')
                      .format(item.createdAt ?? DateTime.now());
                  return Container(
                      decoration: getBoxDecoration(hasShadow: true),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0.d,
                        vertical: 15.0.d,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                item.photoUrl != ""
                                    ? Container(
                                        width: 10.0.d,
                                        height: 10.0.d,
                                        child: XNetworkImage(
                                          src: item.photoUrl ?? "",
                                          height: 5.0.d,
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "${item.referenceType} / ${item.referenceId}",
                                  style: textDisplaySmall(),
                                ),
                                Text(
                                  (Get.locale == Locale(AppConst.khmerCode)
                                          ? item.payload?.locales?.km?.message
                                          : item
                                              .payload?.locales?.en?.message) ??
                                      "",
                                ),
                              ],
                            ),
                          ),
                          Text(
                            formattedDate,
                            style: textDisplaySmall(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
