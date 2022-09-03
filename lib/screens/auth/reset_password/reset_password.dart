import 'package:dhak_dhol/screens/song_upload/song_upload_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.backgroundColor,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset('assets/images/forget_img.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppText.reset,
                  style: GoogleFonts.manrope(
                      color: Colors.red,
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  height: 400,
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
                          AppText.newPassword,
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
                              contentPadding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                              filled: true,
                              fillColor: AppColor.fromfillColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: AppText.hintNewPassword,
                              labelStyle: GoogleFonts.manrope(
                                  color: Colors.white.withOpacity(.4))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          AppText.typeConfirmPassword,
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
                              contentPadding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                              filled: true,
                              fillColor: AppColor.fromfillColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: AppText.hintConfirmPassword,
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
                                      const SongUploadScreen(),
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
                              child: Text(AppText.submit,
                                  style: GoogleFonts.manrope(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          ),
                        ),
                      ),
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
