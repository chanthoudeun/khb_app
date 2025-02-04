import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../../src/models/response/product_response/product.dart';
import '../../src/route/app_navigation.dart';
import '../network_config/typedefs.dart';
import '../utils/app_color.dart';
import '../utils/app_const.dart';
import '../utils/app_ext.dart';
import '../utils/app_log.dart';
import '../widget/no_internet.dart';
import 'state.dart';

class AppLogic extends GetxController {
  var state = AppState();

  @override
  Future<void> onInit() async {
    super.onInit();

    // #region Initialization
    /// Initialize app settings from local storage or defaults.
    // state.appSetting.value = await SettingLocal().getData() ??
    //     AppSettingModel(languageCode: AppConst.khmerCode);
    update();

    /// Set the initial theme color.
    await changeThemeColor(newColor: AppColor.primary);

    update();
    // #endregion

    // #region Network Connectivity Check
    /// Check the current network connectivity status.
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());

    /// If connected to the internet, perform actions like refreshing data and checking device status.
    if (connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.ethernet) ||
        connectivityResult.contains(ConnectivityResult.vpn)) {
      if (state.internetStatus == false) {
        // await handleRefresh();
        Get.back();
      }
      state.internetStatus = true;
      update();
      xLog(message: 'Connected to the internet');
    } else {
      /// If not connected to the internet, display a "No Internet" dialog and handle the offline state.
      if (state.internetStatus == true) {
        Get.dialog(
          const NoInternet(),
          barrierDismissible: false,
          useSafeArea: false,
          transitionCurve: const ElasticInOutCurve(),
          transitionDuration: const Duration(milliseconds: 300),
          barrierColor: Colors.black.withOpacity(0.5),
        );
      }
      state.internetStatus = false;
      update();
      // await handleNoInternetShow();
      xPrettyLog(message: 'Disconnected from the internet');
    }
    // #endregion

    update();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  /// ## How to change Theme
  ///
  /// #### To change the theme color dynamically call changeThemeColor
  ///
  /// ```
  /// put [newColor] for new color wanted
  ///
  /// put [brightness] for Brightness prefer like Brightness.dark or Brightness.light
  /// ```
  Future<void> changeThemeColor(
      {required Color newColor, Brightness? brightness}) async {
    state.themeData.value = ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme:
          AppBarTheme(color: Colors.white, foregroundColor: Colors.white),
      colorScheme: ColorScheme.fromSeed(
        surface: Colors.white,
        seedColor: newColor,
        error: Colors.red,
        onTertiary: Colors.orange,
      ),
      useMaterial3: true,
      fontFamily: fontFamily(),
    );
    Get.changeTheme(state.themeData.value);
    update();
    await Get.updateLocale(
        Locale(state.appSetting.value.languageCode ?? AppConst.khmerCode));
    update();
  }

  String fontFamily() {
    if (state.appSetting.value.languageCode == AppConst.englishCode) {
      return AppConst.englishSuperMarketFont;
    } else {
      return AppConst.khmerFont;
    }
  }

  Future<String> getDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (GetPlatform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.id; // UUID for Android
    } else if (GetPlatform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor ?? ""; // UUID for iOS
    }
    return "";
  }

  getFCMToken() async {
    FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

    // For apple platforms, ensure the APNS token is available before making any FCM plugin API calls
    try {
      if (Platform.isIOS) {
        final apnsToken = await firebaseMessaging.getAPNSToken();
        final fcmToken = await firebaseMessaging.getToken();
        if (apnsToken != null) {
          // APNS token is available, make FCM plugin API requests...
          return fcmToken;
        }
      } else if (Platform.isAndroid) {
        final fcmToken = await firebaseMessaging.getToken();
        if (fcmToken != null) {
          // APNS token is available, make FCM plugin API requests...
          return fcmToken;
        }
      }
    } catch (e) {
      xLog(message: e.toString());
    }
    return "";
  }

  void initTmpProduct(Product item) {
    var existingProductIndex = state.tmpProductList.value
        ?.indexWhere((element) => element.id == item.id);

    if (existingProductIndex == -1 || existingProductIndex == null) {
      // If the product is not already in the list, add it
      state.tmpProductList.value?.add(item);
    } else {
      // If the product is already in the list, update its quantity
      state.tmpProductList.value![existingProductIndex].productQty =
          item.productQty;
    }

    // Check if the product quantity is 0 and remove it from the list
    state.tmpProductList.value
        ?.removeWhere((element) => element.productQty == 0);

    update();
  }

  void getTotalQuantityTmpProduct() {
    int totalQty = 0;
    if (state.tmpProductList.value != null) {
      totalQty = state.tmpProductList.value!
          .fold(0, (total, product) => total + (product?.productQty ?? 0));
      state.totalQtyTmpProduct.value = totalQty;
      getTotalAmountTmpProduct();
      update();
    }
  }

  void getTotalAmountTmpProduct() {
    if (state.tmpProductList.value != null) {
      state.totalAmountTmpProduct.value = state.tmpProductList.value!.fold(
        0,
        (total, product) {
          double productTotal =
              (product?.price ?? 0) * (product?.productQty ?? 0);
          return total + productTotal;
        },
      );
      update();
    }
  }

// handleNoInternetShow() async {
//   switch (Get.currentRoute) {
//     case AppNavigation.MAINPAGE:
//       {
//         if ((Get.find<HomeLogic>()
//                     .state
//                     .productPagingController
//                     .value
//                     .itemList ??
//                 [])
//             .isEmpty) {
//           await Get.find<HomeLogic>().loadingStatus();
//         }
//         break;
//       }
//   }
// }
}
