import 'package:khb_app/src/data/network/enum_end_point.dart';
import 'package:khb_app/src/models/response/notification_response/app_notification.dart';

import '../../../core/network_config/api_handler.dart';
import '../../../core/network_config/paging.dart';
import '../network/api_endpoint.dart';

abstract class INotificationRepo {
  Future<Paging<AppNotification>?> getAll({
    int? pageNo,
    int? pageSize,
    String? notificationType,
    String? photoTypeId,
  });
}

class NotificationRepo implements INotificationRepo {
  @override
  Future<Paging<AppNotification>?> getAll({
    int? pageNo,
    int? pageSize,
    String? notificationType,
    String? photoTypeId,
  }) async {
    Map<String, String> queryParams = {
      "offset": (pageNo ?? 1).toString(),
      "limit": (pageSize ?? 10).toString(),
      "status": "ACTIVE",
      "photoTypeId": photoTypeId ?? "",
    };
    // Add orderStatus only if it is not " " or "All"
    if ((notificationType ?? "").isNotEmpty && notificationType != null) {
      queryParams.addAll({"notificationType": notificationType ?? ""});
    }

    ApiHandler<Paging<AppNotification>> handler =
        ApiHandler<Paging<AppNotification>>.get(
            converter: (json) =>
                Paging<AppNotification>.fromMap(json, type: AppNotification));
    var result = await handler.executePaging<AppNotification>(
        onComplete: (data) => data,
        queryParams: queryParams,
        endPoint: ApiEndpoint.notification(NotificationEndpoint.GET_ALL));

    return result;
  }
}
