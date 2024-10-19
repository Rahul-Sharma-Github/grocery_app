import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                              style: GoogleFonts.roboto(
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
                            fontWeight: FontWeight.w400,
                            color: Color(AppColors.textColor),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
