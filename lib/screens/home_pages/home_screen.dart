import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home_pages/album/album_screen.dart';
import 'package:dhak_dhol/screens/home_pages/album_page.dart';
import 'package:dhak_dhol/screens/home_pages/artists/artists_page.dart';
import 'package:dhak_dhol/screens/home_pages/exlpance_details.dart';
import 'package:dhak_dhol/screens/home_pages/home_page_slider.dart';
import 'package:dhak_dhol/screens/home_pages/song_category.dart';
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
              Wrap(
                children: List.generate(
                    DummyData().songCategory.length,
                    (index) => SongCategory(
                          songCategory: DummyData().songCategory[index],
                        )),
              ),
              const AlbumScreen(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        'Artists',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Image.asset('assets/images/headphone_handaler.png'),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        'More',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset('assets/images/forward.png'),
                    )
                  ],
                ),
              ),
              ArtistsPage()
            ],
          ),
        ),
      ),
    );
  }
}
