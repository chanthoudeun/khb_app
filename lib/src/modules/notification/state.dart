import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:khb_app/src/models/response/notification_response/app_notification.dart';

class NotificationState {
  var notificationPagingController =
      PagingController<int, AppNotification>(firstPageKey: 1).obs;
}
