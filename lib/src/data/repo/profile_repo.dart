import 'package:khb_app/src/data/network/enum_end_point.dart';

import '../../../core/network_config/api_handler.dart';
import '../../models/response/category_response/category_response.dart';
import '../../models/response/outlet_detail_response/outlet_detail_response.dart';
import '../network/api_endpoint.dart';

abstract class IProfileRepo {
  Future<OutletDetailResponse?> getUserProfile({int? id});

  Future<OutletDetailResponse?> deleteUserAccount({int? userId});
}

class ProfileRepo implements IProfileRepo {
  @override
  Future<OutletDetailResponse?> getUserProfile({int? id}) async {
    ApiHandler<OutletDetailResponse> handler =
        ApiHandler<OutletDetailResponse>.get(
            converter: (value) => OutletDetailResponse.fromJson(value));
    var result = await handler.execute(
        onComplete: (data) => data,
        endPoint:
            ApiEndpoint.outletDetail(OutletDetailEndpoint.GET_BY_ID, id: id));
    return result;
  }

  @override
  Future<OutletDetailResponse?> deleteUserAccount({int? userId}) async {
    ApiHandler<OutletDetailResponse> handler =
        ApiHandler<OutletDetailResponse>.get(
            converter: (value) => OutletDetailResponse.fromJson(value));
    var result = await handler.execute(
        onComplete: (data) => data,
        endPoint: ApiEndpoint.deleteUser(
            DeleteUserAccountEndpoint.DELETE_ACCOUNT,
            userId: userId));
    return result;
  }
}
