import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../src/route/app_navigation.dart';
import '../../app/logic.dart';
import 'interceptor_client.dart';

class ApiInterceptor implements ResponseInterceptor {
  bool showDialog = false;

  @override
  Future<http.StreamedResponse> interceptResponse(
      http.StreamedResponse response) async {
    // Handle response data, error, etc.
    final statusCode = response.statusCode;

    switch (statusCode) {
      case 401:
        {
          if (EasyLoading.isShow) {
            EasyLoading.dismiss();
          }
          EasyLoading.dismiss();

          // todo check _unauthorizedHandler
          return (await _unauthorizedHandler(response));
        }
      default:
        return response;
    }
  }

  Future<http.StreamedResponse> _retryRequest(
      http.BaseRequest originalRequest) async {
    if (originalRequest is http.Request) {
      final newRequest =
          http.Request(originalRequest.method, originalRequest.url);

      newRequest.headers.addAll(originalRequest.headers);
      newRequest.body = originalRequest.body;
      newRequest.encoding = originalRequest.encoding;

      return await http.Client().send(newRequest);
    } else if (originalRequest is http.StreamedRequest) {
      final newRequest =
          http.StreamedRequest(originalRequest.method, originalRequest.url);

      newRequest.headers.addAll(originalRequest.headers);
      await originalRequest.finalize().pipe(newRequest.sink);

      return await http.Client().send(newRequest);
    } else {
      throw ArgumentError(
          'Unsupported request type: ${originalRequest.runtimeType}');
    }
  }

  Future<http.StreamedResponse> _unauthorizedHandler(
      http.StreamedResponse response) async {
    // if (Get.currentRoute != AppNavigation.LOGIN) {
    //   if ((Get.find<AppLogic>().state.userResponse.value.userName ?? "") ==
    //       "") {
    //     await Get.find<AppLogic>().logout(back: false);
    //   } else {
    //     if (Get.currentRoute !=
    //         "/set_pin?fromRegister=false&isShowBack=false") {
    //       Get.offAllNamed(
    //         AppNavigation.SET_PIN,
    //         arguments: Get.find<AppLogic>()
    //             .state
    //             .userResponse
    //             .value
    //             .userName
    //             ?.removeAllWhitespace,
    //         // preventDuplicates: true,
    //         parameters: {
    //           "fromRegister": "false",
    //           "isShowBack": "false",
    //         },
    //       );
    //     }
    //   }
    // }

    // Retry the original request with the new token
    return (await _retryRequest(response.request!));
  }
}
