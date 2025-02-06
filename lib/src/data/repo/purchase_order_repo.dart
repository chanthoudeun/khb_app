import 'package:khb_app/src/models/response/purchase_order_response/purchase_order_item.dart';

import '../../../core/network_config/api_handler.dart';
import '../../../core/network_config/paging.dart';
import '../network/api_endpoint.dart';
import '../network/enum_end_point.dart';

abstract class IPurchaseOrderRepo {
  Future<Paging<PurchaseOrderItem>?> getAll({
    int? pageNo,
    int? pageSize,
    int? outletId,
    int? dealerId,
    String? search,
    String? orderStatus,
    String? startCreatedAt,
    String? endCreatedA,
  });
}

class PurchaseOrderRepo implements IPurchaseOrderRepo {
  @override
  @override
  Future<Paging<PurchaseOrderItem>?> getAll({
    int? pageNo,
    int? pageSize,
    int? outletId,
    int? dealerId,
    String? search,
    String? orderStatus,
    String? startCreatedAt,
    String? endCreatedA,
  }) async {
    Map<String, String> queryParams = {
      "limit": (pageSize ?? 10).toString(),
      "offset": (0).toString(),
      // "offset": (pageSize ?? 10).toString(),
      "types": "ORDER",
      "dealerId": "$dealerId",
      "outletIds": "$outletId",
      "startCreatedAt": "$startCreatedAt",
      "endCreatedAt": "$endCreatedA",
      "search": "$search",
    };

    // Add orderStatus only if it is not " " or "All"
    if (orderStatus != "" &&
        orderStatus != "All" &&
        orderStatus != "ALL" &&
        (orderStatus ?? "").isNotEmpty) {
      queryParams.addAll({"orderStatus": orderStatus ?? ""});
    }

    ApiHandler<Paging<PurchaseOrderItem>> handler =
        ApiHandler<Paging<PurchaseOrderItem>>.get(
            converter: (json) => Paging<PurchaseOrderItem>.fromMap(json,
                type: PurchaseOrderItem));
    var result = await handler.executePaging<PurchaseOrderItem>(
        onComplete: (data) => data,
        queryParams: queryParams,
        endPoint: ApiEndpoint.purchaseOrder(
          PurchaseOrderEndpoint.GET_ALL,
        ));

    return result;
  }
}
