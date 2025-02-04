import 'package:get/get.dart';
import 'package:khb_app/src/data/repo/notification_repo.dart';

import '../../../core/app/logic.dart';
import '../../../core/utils/x_paging_data_handler.dart';
import 'state.dart';

class NotificationLogic extends GetxController {
  final NotificationRepo _notificationRepo = Get.find<NotificationRepo>();
  final NotificationState state = NotificationState();

  @override
  Future<void> onInit() async {
    super.onInit();
    state.notificationPagingController.value.addPageRequestListener((pageNo) {
      getNotificationList(
        pageNo: pageNo,
      );
    });
  }

  getNotificationList({
    required int pageNo,
    bool isRefresh = false,
  }) async {
    await xPagingDataHandler(
      pagingController: state.notificationPagingController.value,
      function: _notificationRepo.getAll(
        pageNo: pageNo,
        photoTypeId: Get.find<AppLogic>()
            .state
            .userResponse
            .value
            .user
            ?.employeeFirm
            ?.outletId
            .toString(),
      ),
      pageNo: pageNo,
      isRefresh: isRefresh,
    );
  }
}
