import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/category/song_category/song_category_content.dart';
import 'package:dhak_dhol/screens/home/album/album_page.dart';
import 'package:flutter/material.dart';

class ArtistsSongDetails extends StatelessWidget {
  const ArtistsSongDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
