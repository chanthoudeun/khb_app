import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:khb_app/src/models/response/product_response/en.dart';
import 'package:khb_app/src/models/response/product_response/km.dart';
import 'package:khb_app/src/models/response/product_response/locale.dart';
import 'package:khb_app/src/models/response/product_response/locales.dart';
import 'package:khb_app/src/models/response/product_response/product.dart';
import 'package:khb_app/src/models/response/user_response/dealer_detail.dart';
import 'package:khb_app/src/models/response/user_response/employee_firm.dart';
import 'package:khb_app/src/models/response/user_response/user.dart';
import 'package:khb_app/src/models/response/user_response/user_response.dart';
import 'package:logger/logger.dart';
import '../../src/models/app/app_setting_model.dart';
import 'storage_key.dart';

class HiveManager extends GetxService {
  HiveManager();

  static Future<void> init() async {
    // Initialize Hive for the Flutter app
    await Hive.initFlutter();

    // Register adapters for different data models
    Hive.registerAdapter(UserResponseImplAdapter());
    Hive.registerAdapter(UserImplAdapter());
    Hive.registerAdapter(EmployeeFirmImplAdapter());
    Hive.registerAdapter(DealerDetailImplAdapter());
    Hive.registerAdapter(AppSettingModelImplAdapter());
    Hive.registerAdapter(ProductImplAdapter());
    Hive.registerAdapter(LocaleImplAdapter());
    Hive.registerAdapter(EnImplAdapter());
    Hive.registerAdapter(KmImplAdapter());
    Hive.registerAdapter(LocalesImplAdapter());
  }

  static Future<void> clearAllBox() {
    EasyLoading.show();
    final futures = <Future>[];
    try {
      final keys = [
        StorageKey.settingBox,
      ];
      for (final key in keys) {
        futures.add(Hive.deleteBoxFromDisk(key));
      }
      // Wait for all the futures to complete
      EasyLoading.dismiss();
      Logger().f("Success");
    } catch (e) {
      EasyLoading.dismiss();
      Logger().e(e);
    }
    return Future.wait(futures);
  }

  static Future<void> removeFavoriteAllProduct() {
    final futures = <Future>[];
    final keys = [
      StorageKey.favoriteProductBox,
      StorageKey.favoriteProductData,
    ];
    for (final key in keys) {
      futures.add(Hive.deleteBoxFromDisk(key));
    }
    // Wait for all the futures to complete
    return Future.wait(futures);
  }
}
