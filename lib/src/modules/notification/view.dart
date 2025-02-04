import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class NotificationPage extends StatelessWidget {
  final logic = Get.put(NotificationLogic());
  final state = Get.find<NotificationLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
