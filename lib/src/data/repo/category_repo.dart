import 'package:flutter/foundation.dart';
import 'package:khb_app/src/data/network/enum_end_point.dart';
import 'package:khb_app/src/models/response/category_response/category_item.dart';
import 'package:khb_app/src/models/response/category_response/category_response.dart';

import '../../../core/network_config/api_handler.dart';
import '../../translation/app_locale.dart';
import '../network/api_endpoint.dart';

abstract class ICategoryRepo {
  Future<CategoryResponse?> getBanner();

  Future<CategoryResponse?> getCategoryList();
}

class CategoryRepo implements ICategoryRepo {
  @override
  Future<CategoryResponse?> getBanner() async {
    ApiHandler<CategoryResponse> handler = ApiHandler<CategoryResponse>.get(
        converter: (value) => CategoryResponse.fromJson(value));
    var result = await handler.execute(
        onComplete: (data) => data,
        queryParams: {
          "limit": 5.toString(),
          "offset": 0.toString(),
          "status": "ACTIVE",
          "isExternal": false.toString(),
          "type": "DISPLAY-GROUP",
          "productTypes": "KHB APP",
        },
        endPoint: ApiEndpoint.banner(BannerEndpoint.GET_ALL));
    var resultBanner = result;
    return resultBanner;
  }

  @override
  Future<CategoryResponse?> getCategoryList() async {
    ApiHandler<CategoryResponse> handler = ApiHandler<CategoryResponse>.get(
        converter: (value) => CategoryResponse.fromJson(value));
    var result = await handler.execute(
        onComplete: (data) => data,
        queryParams: {
          "limit": 100.toString(),
          "offset": 0.toString(),
          "status": "ACTIVE",
          "isExternal": false.toString(),
          "type": "DISPLAY-GROUP",
          "productTypes": "PRODUCT",
        },
        endPoint: ApiEndpoint.banner(BannerEndpoint.GET_ALL));
    var resultBanner = result;
  
    return resultBanner;
  }
}
