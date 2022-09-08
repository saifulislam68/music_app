import 'package:dhak_dhol/screens/profile/add_album/file_upload/file_upload_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAlbumScreen extends StatelessWidget {
  const AddAlbumScreen({Key? key}) : super(key: key);

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
              'Add new album to your account',
              style: TextStyle(color: AppColor.textColor, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 156,
              width: 343,
              decoration: BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.circular(20)),
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
              height: 40,
            ),
            Text(
              "Add Album title",
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                filled: true,
                fillColor: AppColor.fromfillColor,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Add  Album title",
                labelStyle: GoogleFonts.manrope(
                  color: Colors.white.withOpacity(.4),
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
                    'Add Album',
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
