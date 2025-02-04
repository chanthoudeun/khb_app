import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CheckOutPage extends StatelessWidget {
  final logic = Get.put(CheckOutLogic());
  final state = Get.find<CheckOutLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
