import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongUploadScreen extends StatefulWidget {
  const SongUploadScreen({Key? key}) : super(key: key);

  @override
  State<SongUploadScreen> createState() => _SongUploadScreenState();
}

class _SongUploadScreenState extends State<SongUploadScreen> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Yamaha';
    return Scaffold(
      backgroundColor: Color(0xff000E29),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(
          0xff000E29,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset(AppImage.applogo),
          ),
          /////// Audio title from/////
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Text(
              "Audio title",
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
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  filled: true,
                  fillColor: AppColor.fromfillColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Type album title",
                  labelStyle:
                      GoogleFonts.manrope(color: Colors.white.withOpacity(.4))),
            ),
          ),
          ///////Album Title from///////
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Text(
              "Album title",
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
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  filled: true,
                  fillColor: AppColor.fromfillColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Album title",
                  labelStyle:
                      GoogleFonts.manrope(color: Colors.white.withOpacity(.4))),
            ),
          ),
          ///////////// Categorey dropDwon/////////////
          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Text(
              "Select Category",
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              decoration: BoxDecoration(
                color: AppColor.fromfillColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style:
                      GoogleFonts.manrope(color: Colors.white.withOpacity(.4)),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Yamaha', 'Honda', 'Tvs', 'Suzuki']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          //////////// Select mood//////////
          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Text(
              "Mood",
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              decoration: BoxDecoration(
                color: AppColor.fromfillColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style:
                      GoogleFonts.manrope(color: Colors.white.withOpacity(.4)),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Yamaha', 'Honda', 'Tvs', 'Suzuki']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          ///////// Upload Elevated button////

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
                  'Upload',
                  style: GoogleFonts.manrope(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
