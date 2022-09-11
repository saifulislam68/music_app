import 'package:dhak_dhol/screens/auth/reset_password/reset_password.dart';
import 'package:dhak_dhol/screens/category/song_category/song_category_screen.dart';
import 'package:dhak_dhol/screens/home/home_screen.dart';
import 'package:dhak_dhol/screens/profile/profile_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ResetPassword(),
    ProfileScreen(),
    SongCategoryScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(1, 1),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: BottomNavigationBar(
          elevation: 4,
          backgroundColor: AppColor.deepBlue,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: AppColor.secondary),
          selectedItemColor: Colors.white,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/mood_vector.png'),
              label: 'Mood',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/star_vector.png'),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/singer_vector.png',
              ),
              label: 'Singer',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/album_vector.png'),
              label: 'Album',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
