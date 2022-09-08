import 'package:dhak_dhol/utils/app_const.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FileUploadScreen extends StatelessWidget {
  const FileUploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.deepBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(child: Image.asset('assets/images/app_logo.png')),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Media cover (add picture)',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 156,
              decoration: BoxDecoration(
                  color: AppColor.backgroundColor2,
                  borderRadius: BorderRadius.circular(10)),
              child: DottedBorder(
                radius: Radius.circular(50),
                color: Colors.red,
                strokeWidth: .4,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/cloud-upload.png'),
                      Text(
                        'Drag  your music cover',
                        style:
                            TextStyle(color: AppColor.textColor, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Media file (add audio file)',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 156,
              decoration: BoxDecoration(
                  color: AppColor.backgroundColor2,
                  borderRadius: BorderRadius.circular(10)),
              child: DottedBorder(
                radius: Radius.circular(50),
                color: Colors.red,
                strokeWidth: .4,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/cloud-upload.png'),
                      Text(
                        'Drag  your music cover',
                        style:
                            TextStyle(color: AppColor.textColor, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: AppColor.buttonColor,
                  onPrimary: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Next',
                    style: GoogleFonts.manrope(fontSize: 16),
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
