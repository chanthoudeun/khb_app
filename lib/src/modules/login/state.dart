import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/response/user_response/user_response.dart';

class LoginState {
  var userResponse = UserResponse().obs;
  final isPasswordObscureText = true.obs;

  var token = "".obs;

  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
}
