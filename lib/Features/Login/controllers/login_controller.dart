import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isSubmitted = false.obs; // Track if the form has been submitted

  // Form validation
  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  void login() {
    isSubmitted.value = true; // Set form as submitted

    if (validateEmail(email.value) == null &&
        validatePassword(password.value) == null) {
      // Perform login logic
      Get.snackbar('Login Successful', 'Welcome back!',
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar(
        'Login Failed',
        'Please fix the errors before proceeding.',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.red[400],
      );
    }
  }
}
