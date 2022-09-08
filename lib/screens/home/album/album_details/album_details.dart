import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/category/song_category/song_category_content.dart';
import 'package:dhak_dhol/screens/profile/total_song/total_song_content.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class AlbumDetailsScreen extends StatelessWidget {
  const AlbumDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/albumdetails1.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    top: 120,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 53,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/mansinging.png",
                        ),
                        radius: 50,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 16, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      'Reiciendis',
                      style: TextStyle(
                          color: AppColor.secondary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/music_handaler.png',
                              color: AppColor.textColor,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Tracks 16',
                              style: TextStyle(
                                  color: AppColor.textColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Duration :02.11.28',
                          style: TextStyle(
                              color: AppColor.textColor, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: DummyData().selectMusic.length,
                  itemBuilder: (context, index) {
                    return SongCategoryContent(
                      selectMusic: DummyData().selectMusic[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
