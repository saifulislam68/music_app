import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/album/album_screen.dart';
import 'package:dhak_dhol/screens/home/artists/artists_screen.dart';
import 'package:dhak_dhol/screens/home/exlpance_details.dart';
import 'package:dhak_dhol/screens/home/home_page_slider.dart';
import 'package:dhak_dhol/screens/home/moods/moods_screen.dart';
import 'package:dhak_dhol/screens/home/popular/popular_screen.dart';
import 'package:dhak_dhol/screens/home/song_category.dart';
import 'package:dhak_dhol/screens/home/tracks/tracks_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        elevation: 0,
        backgroundColor: AppColor.backgroundColor,
        title: Image.asset(
          AppImage.applogo,
          height: 20,
          width: 120,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cloud_download_outlined)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExpanseDetails(),
                    ));
              },
              icon: const Icon(Icons.search)),
          const CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 22,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile_img.png"),
              radius: 21,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.deepBlue,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: DummyData().homePageSlider.length,
                      itemBuilder: (context, index) {
                        return HomePageSlider(
                          homePageSlider: DummyData().homePageSlider[index],
                        );
                      },
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              // GridView.builder(
              //     shrinkWrap: true,
              //     physics: const NeverScrollableScrollPhysics(),
              //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //       maxCrossAxisExtent: 100,
              //       childAspectRatio: 3 / 2,
              //       crossAxisSpacing: 5,
              //       mainAxisSpacing: 5,
              //     ),
              //     itemCount: DummyData().songCategory.length,
              //     itemBuilder: (BuildContext ctx, index) {
              //       return SongCategory(
              //         songCategory: DummyData().songCategory[index],
              //       );
              //     }),
              ////////song category/////////
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  children: List.generate(
                      DummyData().songCategory.length,
                      (index) => SongCategory(
                            songCategory: DummyData().songCategory[index],
                          )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AlbumScreen(),
              const SizedBox(
                height: 10,
              ),
              const ArtistsScreen(),
              const SizedBox(
                height: 10,
              ),
              const MoodsScreen(),
              const SizedBox(
                height: 10,
              ),
              const PopularScreen(),

              const TracksScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
