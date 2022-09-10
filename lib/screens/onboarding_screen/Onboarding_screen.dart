import 'package:dhak_dhol/screens/auth/sign_in/sign_in_screen.dart';
import 'package:dhak_dhol/screens/auth/sign_up.dart/sign_up_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image.asset('assets/images/onboarding.img.png'),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.deepBlue,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  height: 330,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          AppText.onboardingText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColor.grey, fontSize: 24, height: 1.2),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ));
                          },
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xffFC455D),
                                    Color(0xffFB7B58)
                                  ],
                                )),
                            child: Center(
                              child: Text(AppText.getStarted,
                                  style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 20)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppText.accountText,
                            style: GoogleFonts.manrope(
                                color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'SignUp',
                            style: GoogleFonts.manrope(
                                color: AppColor.secondary, fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
