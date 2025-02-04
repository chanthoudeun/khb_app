import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/src/models/response/category_response/category_response.dart';
import 'package:khb_app/src/models/response/outlet_detail_response/outlet_detail_response.dart';

class ProfileState {
  var userProfile = OutletDetailResponse().obs;
  var screenStatus = RxStatus
      .loading()
      .obs;
  TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
}
