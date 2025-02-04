import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:khb_app/flavors.dart';
import 'package:khb_app/src/models/response/auth_response/auth_response.dart';
import 'package:uuid/uuid.dart';

import '../../../core/app/logic.dart';
import '../../../core/network_config/api_handler.dart';
import '../../data/local/user_local.dart';
import '../../data/network/api_endpoint.dart';
import '../../data/network/enum_end_point.dart';
import '../../models/response/user_response/user_response.dart';
import '../../route/app_navigation.dart';
import '../../translation/app_locale.dart';
import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  Future<String?> generateID() async {
    String? uuid;
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iOS = await deviceInfo.iosInfo;
      uuid = iOS.identifierForVendor;
    } else if (Platform.isAndroid) {
      final android = await deviceInfo.androidInfo;
      uuid = android.id;
    } else {
      uuid = const Uuid().v4();
    }
    return uuid;
  }

  getToken() async {
    ApiHandler<AuthResponse> handler = ApiHandler<AuthResponse>.post(
        converter: (value) => AuthResponse.fromJson(value));
    var result = await handler.execute(
        isAuthenticated: false,
        onComplete: (data) async {
          state.token.value = data.token ?? "";
          update();
        },
        headers: {
          "Authorization": "Bearer ${FConfig.tokenToGetToken}",
        },
        onFail: (error) {},
        body: {
          "clientId": FConfig.clientId,
        },
        endPoint: ApiEndpoint.auth(AuthEndpoint.GET_TOKEN));
  }

  login() async {
    try {
      final udid = await generateID();
      final platform = Platform.isAndroid ? "ANDROID" : "IOS";
      await getToken();
      EasyLoading.show();
      ApiHandler<UserResponse> handler = ApiHandler<UserResponse>.post(
          converter: (value) => UserResponse.fromJson(value));
      var result = await handler.execute(
          isAuthenticated: false,
          onComplete: (data) async {
            return data;
          },
          headers: {
            "token": "Bearer ${state.token.value}",
            "x-udid": "$udid",
            "x-platform": "$platform"
          },
          onFail: (error) {},
          body: {
            "username": state.userNameController.text,
            "password": state.passwordController.text,
            "type": "DMS",
          },
          endPoint: ApiEndpoint.auth(AuthEndpoint.LOGIN));

      if (result != null) {
        state.userResponse.value = result;
        await UserLocal().setData(result);
        update();
        EasyLoading.dismiss();
        //todo when need mall
        Get.offAllNamed(AppNavigation.MAINPAGE);
      }
    } catch (e) {
      EasyLoading.showError(AppLocale.error.tr);
    } finally {
      EasyLoading.dismiss();
    }
  }
}
