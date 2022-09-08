import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/album/all_album/all_album_content.dart';
import 'package:dhak_dhol/screens/home/album/all_album/song_upload/song_upload_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AllAlbumScreen extends StatelessWidget {
  const AllAlbumScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        title: Text("Album"),
        backgroundColor: AppColor.deepBlue,
      ),
      body: Column(
        children: [
          SizedBox(
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 140,
                  childAspectRatio: 3 / 4.4,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 0,
                ),
                itemCount: DummyData().albumList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return AllAlbumContent(
                    albumList: DummyData().albumList[index],
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
          //Speed dial menu
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
          onClose: () => print('DIAL CLOSED'), //action when menu closes

          elevation: 8.0, //shadow elevation of button
          shape: CircleBorder(), //shape of button

          children: [
            SpeedDialChild(
              child: Image.asset(
                'assets/images/music_handaler.png',
              ),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'Upload',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SongUploadScreen(),
                  )),
              onLongPress: () => print('SECOND CHILD LONG PRESS'),
            ),
          ]),
    );
  }
}
