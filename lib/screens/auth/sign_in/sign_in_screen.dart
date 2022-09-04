import 'package:dhak_dhol/screens/auth/forget_password/forget_password_screen.dart';
import 'package:dhak_dhol/screens/auth/sign_up.dart/sign_up_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Center(
              child: Image.asset('assets/images/authpic.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 480,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.deepBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Text(
                        AppText.typeName,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.manrope(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: TextField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                            filled: true,
                            fillColor: AppColor.fromfillColor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: AppText.hintName,
                            labelStyle: GoogleFonts.manrope(
                                color: Colors.white.withOpacity(.4))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Text(
                        AppText.typePassword,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.manrope(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: TextField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                            filled: true,
                            fillColor: AppColor.fromfillColor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: AppText.hintPassword,
                            labelStyle: GoogleFonts.manrope(
                                color: Colors.white.withOpacity(.4))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgetPasswordScreen(),
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
                                end: Alignment.topRight,
                                colors: <Color>[
                                  Color(0xffFB7B58),
                                  Color(0xffFC455D),
                                ],
                              )),
                          child: Center(
                            child: Text(AppText.signin,
                                style: GoogleFonts.manrope(
                                    color: Colors.white, fontSize: 16)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        AppText.accountText,
                        style: GoogleFonts.manrope(
                            color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
