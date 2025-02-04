import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CenterLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColor.primary,
      ),
    );
  }
}
