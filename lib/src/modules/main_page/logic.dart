import 'package:get/get.dart';

import 'state.dart';

class MainPageLogic extends GetxController {
  final MainPageState state = MainPageState();

  onTapNav(int index) async {
    state.currentIndex.value = index;
    state.pageController.value.jumpToPage(index);
    update();
  }
}
