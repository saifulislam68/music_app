import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/album/album_page.dart';
import 'package:dhak_dhol/screens/home/album/all_album/all_album_screen.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  'Album',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/headphone_handaler.png'),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AllAlbumScreen(),
                      ));
                },
                child: Row(
                  children: [
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 190,
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DummyData().albumList.length,
                itemBuilder: (context, index) {
                  return AlbumPage(
                    albumList: DummyData().albumList[index],
                  );
                },
              )),
        ),
      ],
    );
  }
}
