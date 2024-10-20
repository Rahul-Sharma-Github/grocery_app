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
                  const SizedBox(height: 100),
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
                  // Form Text fields
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
