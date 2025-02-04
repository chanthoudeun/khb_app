import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../flavors.dart';
import '../../src/route/app_navigation.dart';
import '../../src/translation/app_translation.dart';
import '../utils/app_color.dart';
import '../utils/app_const.dart';
import '../utils/app_log.dart';
import '../widget/no_internet.dart';
import '../widget/x_loading.dart';
import '../widget/x_success.dart';
import 'logic.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final logic = Get.find<AppLogic>();
  final state = Get.find<AppLogic>().state;
  late StreamSubscription<List<ConnectivityResult>> subscription;

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection
        ],
        child: GetMaterialApp(
            enableLog: true,
            color: Colors.white,
            defaultTransition: Transition.cupertino,
            transitionDuration: const Duration(milliseconds: 500),
            popGesture: Get.isPopGestureEnable,
            theme: state.themeData.value.copyWith(
                appBarTheme: AppBarTheme(backgroundColor: Colors.white)),
            initialRoute: AppNavigation.SPLASH_SCREEN,
            translations: AppTranslation(),
            locale: Locale(AppConst.khmerCode),
            fallbackLocale: Locale(AppConst.khmerCode),
            getPages: AppNavigation.pages,
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            builder: EasyLoading.init(
                builder: (context, child) => Overlay(initialEntries: [
                      if (child != null) ...[
                        OverlayEntry(
                            builder: (context) => MediaQuery(
                                  data: MediaQuery.of(context).copyWith(
                                      textScaler: const TextScaler.linear(1.0)),
                                  child: _flavorBanner(child: child, show: false
                                      // kDebugMode == true &&
                                      //     FConfig.appFlavor != Flavor.prd,
                                      ),
                                ))
                      ]
                    ]))));
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show == true
          ? Banner(
              location: BannerLocation.bottomEnd,
              message: FConfig.name.toUpperCase(),
              color: AppColor.primary,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : Container(
              child: child,
            );

  @override
  void initState() {
    super.initState();
    _easyLoadingConfig();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) async {
      if (result.contains(ConnectivityResult.wifi) ||
          result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.ethernet) ||
          result.contains(ConnectivityResult.vpn)) {
        if (state.internetStatus == false) {
          // to do check handleRefresh
          // await logic.handleRefresh();
          Get.back();
        }
        state.internetStatus = true;
        logic.update();
        xLog(message: 'Connected to the internet');
      } else if (result.contains(ConnectivityResult.none)) {
        if (state.internetStatus == true) {
          Get.dialog(
            const NoInternet(),
            barrierDismissible: false,
            transitionCurve: const ElasticInOutCurve(),
            transitionDuration: const Duration(milliseconds: 300),
            barrierColor: Colors.black.withOpacity(0.5),
          );
        }
        state.internetStatus = false;
        logic.update();
        // to do check handleNoInternetShow
        // await logic.handleNoInternetShow();
        xPrettyLog(message: 'Disconnected from the internet');
      }
    });
  }

  // Be sure to cancel subscription after you are done
  @override
  dispose() {
    subscription.cancel();
    super.dispose();
  }

  void _easyLoadingConfig() {
    EasyLoading.instance
      ..indicatorWidget = const xLoading()
      ..successWidget = const xSuccess()
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = Colors.transparent
      ..boxShadow = [const BoxShadow(color: Colors.transparent)]
      ..maskColor = Colors.black26
      ..indicatorColor = AppColor.primary
      ..textColor = Colors.white
      ..progressColor = Colors.transparent
      ..maskType = EasyLoadingMaskType.custom;
  }
}
