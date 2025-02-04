import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MyFavoritesPage extends StatelessWidget {
  final logic = Get.put(MyFavoritesLogic());
  final state = Get.find<MyFavoritesLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
