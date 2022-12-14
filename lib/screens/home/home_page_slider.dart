import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/music_player_page/music_player_page.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class HomePageSlider extends StatelessWidget {
  final Music? homePageSlider;
  const HomePageSlider({Key? key, this.homePageSlider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MusicPlayerPage(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 265,
              width: 164,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              homePageSlider?.assetImage ?? "",
                            ),
                          ),
                        ),
                        height: 200.0,
                        width: 164,
                      ),
                      Container(
                        height: 200.0,
                        width: 164,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.transparent.withOpacity(0.0),
                              Colors.purple.withOpacity(0.6),
                            ],
                            stops: const [0.0, 1.0],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    homePageSlider?.title ?? '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    homePageSlider?.author ?? '',
                    style: TextStyle(
                      color: AppColor.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
