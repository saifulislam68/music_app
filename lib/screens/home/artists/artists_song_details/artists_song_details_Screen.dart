import 'package:dhak_dhol/screens/home/artists/artists_song_details/artists_song_details_content.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistsSongDetailsScreen extends StatefulWidget {
  const ArtistsSongDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ArtistsSongDetailsScreen> createState() =>
      _ArtistsSongDetailsScreenState();
}

class _ArtistsSongDetailsScreenState extends State<ArtistsSongDetailsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.deepBlue,
        title: Text('Artists'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Card(
                    color: Colors.transparent,
                    elevation: 4,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:
                            Image.asset('assets/images/artistsDetails1.png')),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 40,
                    right: 0,
                    child: Text(
                      'Accident',
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                  labelStyle: GoogleFonts.lora(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  tabs: const [
                    Tab(
                      text: 'Track',
                    ),
                    Tab(
                      text: 'Album',
                    )
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab),
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: const [
                  ArtistsSongDetails(),
                  ArtistsSongDetails(),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
