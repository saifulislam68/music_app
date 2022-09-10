import 'package:dhak_dhol/screens/home/settings/about_us.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  AppColor.backgroundColor2.withOpacity(1),
                  BlendMode.hardLight),
              image: const AssetImage(
                "assets/images/drawer_bg.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/images/headphone_handaler.png',
                  fit: BoxFit.cover,
                  height: 25,
                ),
                title: const Text(
                  'Playlist',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {},
              ),
              const Divider(
                thickness: 1,
                color: Colors.white,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/music_handaler.png',
                  fit: BoxFit.cover,
                  height: 25,
                ),
                title: const Text(
                  'Tracks',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  // Navigator.of(context)
                  //     .pushReplacementNamed(OrdersScreen.routeName);
                },
              ),
              const Divider(
                thickness: 1,
                color: Colors.white,
              ),
              ExpansionTile(
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ), //add icon
                childrenPadding: EdgeInsets.only(left: 5), //children padding
                children: [
                  ListTile(
                    title: Text(
                      "About Us",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUsScreen(),
                          ));
                    },
                  ),

                  ListTile(
                    title: Text(
                      "App Terms",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onTap: () {
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
