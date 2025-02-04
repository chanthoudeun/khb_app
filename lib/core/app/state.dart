import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/src/models/response/product_response/product.dart';
import '../../src/models/app/app_setting_model.dart';
import '../../src/models/response/user_response/user_response.dart';
import '../utils/app_const.dart';

class AppState {
  /// Define an observable variable to hold the current theme data
  Rx<ThemeData> themeData = ThemeData.light().obs;
  Uint8List? markIconsStore;
  Uint8List? markIconsUser;
  var appSetting = AppSettingModel(languageCode: AppConst.khmerCode).obs;
  var userResponse = UserResponse().obs;
  var internetStatus = true;
  String shortcut = 'no action set';

  var tmpProductList = <Product>[].obs;
  var totalQtyTmpProduct = 0.obs;
  var totalAmountTmpProduct = 0.0.obs;
  var countProduct = 0.obs;
}
