import '../../../flavors.dart';
import 'enum_end_point.dart';

class ApiEndpoint {
  static const String version = "1";
  static const String suffix = "/v$version";

  static String auth(AuthEndpoint endPoint) {
    var path = '${FConfig.baseUrl}$suffix/auth';
    switch (endPoint) {
      case AuthEndpoint.LOGIN:
        return '$path/login';
      case AuthEndpoint.GET_TOKEN:
        return '$path/authorize';
    }
  }

  static String banner(BannerEndpoint endPoint) {
    var path = '${FConfig.baseUrl}$suffix/admin/products';
    switch (endPoint) {
      case BannerEndpoint.GET_ALL:
        return '$path/tree';
    }
  }

  static String deleteUser(DeleteUserAccountEndpoint endPoint, {int? userId}) {
    var path = '${FConfig.baseUrl}$suffix/admin/users';
    switch (endPoint) {
      case DeleteUserAccountEndpoint.DELETE_ACCOUNT:
        return '$path/$userId';
    }
  }

  static String outletDetail(OutletDetailEndpoint endPoint, {int? id}) {
    var path = '${FConfig.baseUrl}$suffix/admin/firms/outlets';
    switch (endPoint) {
      case OutletDetailEndpoint.GET_BY_ID:
        return '$path/$id';
    }
  }

  static String product(
    ProductEndpoint endPoint, {
    int? dealerId,
    int? outletId,
  }) {
    var path = '${FConfig.baseUrl}$suffix/admin/firms';
    switch (endPoint) {
      case ProductEndpoint.GET_ALL:
        return '$path/${dealerId}/products/prices/${outletId}';
    }
  }

  static String purchaseOrder(PurchaseOrderEndpoint endPoint) {
    var path = '${FConfig.baseUrl}$suffix/admin/sales';
    switch (endPoint) {
      case PurchaseOrderEndpoint.GET_ALL:
        return '$path/orders';
    }
  }
}
