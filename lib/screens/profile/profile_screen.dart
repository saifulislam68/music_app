import 'package:dhak_dhol/screens/profile/add_album/add_album_screen.dart';
import 'package:dhak_dhol/screens/profile/add_album/file_upload/file_upload_screen.dart';
import 'package:dhak_dhol/screens/profile/followers/followers_screen.dart';
import 'package:dhak_dhol/screens/profile/total_earning/total_earning_screen.dart';
import 'package:dhak_dhol/screens/profile/total_song/total_song_screen.dart';
import 'package:dhak_dhol/screens/profile/total_view/total_view_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.deepBlue,
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ///////// Total View//////
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TotalViewScreen(),
                        ));
                  },
                  child: Card(
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.backgroundColor2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/view_icon.png',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Total view',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              /////////Followers/////////
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FollowersScreen(),
                        ));
                  },
                  child: Card(
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.backgroundColor2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/follow_icon.png',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Followers',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              ////////////Total Song///////////
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TotalSong(),
                        ));
                  },
                  child: Card(
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.backgroundColor2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/song_icon.png',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Total Song',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //////////Earnings//////////
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TotalEarningScreen(),
                        ));
                  },
                  child: Card(
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.backgroundColor2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/earning_icon.png',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Earnings',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 33,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/select_music2.png",
                        ),
                        radius: 31,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Letraset sheets",
                            style:
                                TextStyle(color: Colors.white.withOpacity(.8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Image.asset('assets/images/music_handaler.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "16 track",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.8)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        marginBottom: 10, //margin bottom
        icon: Icons.add, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor: Colors.red, //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor:
            Colors.red, //background color when menu is expanded
        activeForegroundColor: Colors.white,
        buttonSize: 56.0, //button size
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'), // action when menu opens
        onClose: () => print('DIAL CLOSED'),
        elevation: 8.0, //shadow elevation of button
        shape: CircleBorder(), //shape of button
        children: [
          SpeedDialChild(
            child: Image.asset('assets/images/all_song_handaler.png'),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Album',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddAlbumScreen(),
                  ));
            },
          ),
          SpeedDialChild(
            child: Image.asset(
              'assets/images/music_handaler.png',
            ),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Song',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FileUploadScreen(),
                )),
          ),
        ],
      ),
    );
  }
}
