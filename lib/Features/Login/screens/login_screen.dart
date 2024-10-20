import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/utils/colors.dart';

import '../controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  // Logo + Title + Subtitle
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: SizedBox(
                          height: 30,
                          width: 55,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/logo.png'),
                          ),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: SizedBox(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              '!DealMart',
                              style: GoogleFonts.monda(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Color(AppColors.logoTextColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          'Store',
                          style: GoogleFonts.roboto(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: Color(AppColors.textColor),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // TextField Title + Form Text fields + Buttons
                  SizedBox(height: width < 550 ? 100 : 500),
                  // TextField Title
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36.0),
                          child: Text(
                            'Shop Smart, Save Big on Groceries!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Color(AppColors.textColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Form Text fields + Buttons
                  Container(
                    decoration: BoxDecoration(
                      color: Color(AppColors.textColor),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 28, horizontal: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Dashes and "Login" Text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 1.2,
                                  endIndent: 10,
                                  color:
                                      Color(AppColors.textFieldInnerTextColor),
                                ),
                              ),
                              Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(
                                        AppColors.textFieldInnerTextColor)),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1.2,
                                  indent: 10,
                                  color:
                                      Color(AppColors.textFieldInnerTextColor),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          // Email Field
                          Obx(() => TextFormField(
                                onChanged: (value) =>
                                    controller.email.value = value,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                      color: Color(
                                          AppColors.textFieldInnerTextColor),
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color(AppColors.textfieldIconColor),
                                  ),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    color: Color(
                                        AppColors.textFieldInnerTextColor),
                                  ),
                                  border: const OutlineInputBorder(),
                                  errorText: controller.isSubmitted.value
                                      ? controller
                                          .validateEmail(controller.email.value)
                                      : null, // Only show error after form submission
                                ),
                              )),
                          const SizedBox(height: 20),
                          // Password Field
                          Obx(() => TextFormField(
                                obscureText: true,
                                onChanged: (value) =>
                                    controller.password.value = value,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                      color: Color(
                                          AppColors.textFieldInnerTextColor),
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(AppColors.textfieldIconColor),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Color(
                                        AppColors.textFieldInnerTextColor),
                                  ),
                                  border: const OutlineInputBorder(),
                                  errorText: controller.isSubmitted.value
                                      ? controller.validatePassword(
                                          controller.password.value)
                                      : null, // Only show error after form submission
                                ),
                              )),
                          const SizedBox(height: 10),
                          // Forgot Password & Sign Up
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Navigate to Forgot Password page
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Color(
                                        AppColors.forgotPasswordTextColor),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Navigate to Sign Up page
                                },
                                child: Text(
                                  'Sign Up !',
                                  style: TextStyle(
                                    color: Color(
                                        AppColors.forgotPasswordTextColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          // Login Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                controller.login();
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                textStyle: const TextStyle(fontSize: 18),
                                backgroundColor:
                                    Color(AppColors.loginButtonBackground),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Color(AppColors.textColor),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
