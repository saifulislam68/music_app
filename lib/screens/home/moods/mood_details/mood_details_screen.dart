import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/category/song_category/song_category_content.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class MoodDetailsScreen extends StatelessWidget {
  const MoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        'assets/images/MoodDetils1.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: -30,
                        left: 100,
                        right: 100,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF7001B6),
                                Color(0xFFFB7159),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: [0.0, 1.5],
                            ),
                          ),
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/headphone_handaler.png',
                                height: 24,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Believable',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/music_handaler.png'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Track",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
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
