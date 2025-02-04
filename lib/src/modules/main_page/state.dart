import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../translation/app_locale.dart';

class MainPageState {
  var currentIndex = 0.obs;
  var pageController = PageController(initialPage: 0).obs;
  List<String> labelList = [
    AppLocale.home,
    AppLocale.order,
    AppLocale.profile,
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.list_alt_outlined,
    Icons.person_outline
  ];
}
