import 'package:khb_app/src/data/network/enum_end_point.dart';
import 'package:khb_app/src/models/response/product_response/product.dart';

import '../../../core/network_config/api_handler.dart';
import '../../../core/network_config/paging.dart';
import '../network/api_endpoint.dart';

abstract class IProductRepo {
  Future<Paging<Product>?> getAll({
    int? pageNo,
    int? pageSize,
    int? outletId,
    int? dealerId,
    int? displayGroupIds,
  });
}

class ProductRepo implements IProductRepo {
  @override
  Future<Paging<Product>?> getAll({
    int? pageNo,
    int? pageSize,
    int? outletId,
    int? dealerId,
    int? displayGroupIds,
  }) async {
    Map<String, String> queryParams = {
      "offset": (pageNo ?? 1).toString(),
      "limit": (pageSize ?? 10).toString(),
      "productTypes": "PRODUCT",
      "status": "ACTIVE",
      "sellingType": "SELLING",
    };
    // Add orderStatus only if it is not " " or "All"
    if (displayGroupIds != 0 && displayGroupIds != null) {
      queryParams
          .addAll({"displayGroupIds": (displayGroupIds ?? 0).toString()});
    }

    ApiHandler<Paging<Product>> handler = ApiHandler<Paging<Product>>.get(
        converter: (json) => Paging<Product>.fromMap(json, type: Product));
    var result = await handler.executePaging<Product>(
        onComplete: (data) => data,
        queryParams: queryParams,
        endPoint: ApiEndpoint.product(
          ProductEndpoint.GET_ALL,
          dealerId: dealerId,
          outletId: outletId,
        ));

    return result;
  }
}
