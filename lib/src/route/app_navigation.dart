import 'package:get/get.dart';
import 'package:khb_app/src/modules/login/binding.dart';
import 'package:khb_app/src/modules/login/view.dart';
import 'package:khb_app/src/modules/main_page/binding.dart';
import 'package:khb_app/src/modules/main_page/page/home/binding.dart';
import 'package:khb_app/src/modules/main_page/page/home/view.dart';
import 'package:khb_app/src/modules/main_page/page/profile/binding.dart';
import 'package:khb_app/src/modules/main_page/page/profile/view.dart';
import 'package:khb_app/src/modules/main_page/page/purchase_order/binding.dart';
import 'package:khb_app/src/modules/main_page/page/purchase_order/view.dart';
import 'package:khb_app/src/modules/main_page/view.dart';
import 'package:khb_app/src/modules/my_favorites/binding.dart';
import 'package:khb_app/src/modules/my_favorites/view.dart';
import 'package:khb_app/src/modules/notification/binding.dart';
import 'package:khb_app/src/modules/notification/logic.dart';
import 'package:khb_app/src/modules/notification/view.dart';
import 'package:khb_app/src/modules/splash_screen/binding.dart';
import 'package:khb_app/src/modules/splash_screen/view.dart';
import 'package:khb_app/src/modules/term_condition/binding.dart';
import 'package:khb_app/src/modules/term_condition/view.dart';
import 'package:khb_app/src/modules/welcome/binding.dart';
import 'package:khb_app/src/modules/welcome/view.dart';

class AppNavigation {
  AppNavigation._();

  static const LOGIN = "/login";
  static const MAINPAGE = "/main_page";
  static const WELCOME = "/welcome_page";
  static const SPLASH_SCREEN = "/splash_screen";
  static const PURCHASE_ORDER = "/purchase_order";
  static const HOME = "/home";
  static const PROFILE = "/profile";
  static const TERMCONDITION = "/term_condition";
  static const MY_FAVORITES = "/my_favorites";
  static const NOTIFICATIOND = "/notification";

  static final pages = [
    GetPage(
      name: AppNavigation.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppNavigation.MAINPAGE,
      page: () => MainPagePage(),
      bindings: [
        HomeBinding(),
        PurchaseOrderBinding(),
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: AppNavigation.WELCOME,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppNavigation.SPLASH_SCREEN,
      page: () => SplashScreenPage(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: AppNavigation.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppNavigation.PURCHASE_ORDER,
      page: () => PurchaseOrderPage(),
      binding: PurchaseOrderBinding(),
    ),
    GetPage(
      name: AppNavigation.PROFILE,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppNavigation.TERMCONDITION,
      page: () => TermConditionPage(),
      binding: TermConditionBinding(),
    ),
    GetPage(
      name: AppNavigation.MY_FAVORITES,
      page: () => MyFavoritesPage(),
      binding: MyFavoritesBinding(),
    ),
    GetPage(
      name: AppNavigation.NOTIFICATIOND,
      page: () => NotificationPage(),
      binding: NotificationBinding(),
    ),
  ];
}
