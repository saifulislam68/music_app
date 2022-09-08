import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/album/album_details/album_details.dart';
import 'package:flutter/material.dart';

class AllAlbumContent extends StatelessWidget {
  final Music? albumList;
  const AllAlbumContent({Key? key, this.albumList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AlbumDetailsScreen(),
              ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 53,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        albumList?.assetImage ?? "",
                      ),
                      radius: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    albumList?.title ?? '',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child:
                              Image.asset('assets/images/music_handaler.png'),
                        ),
                        Text(
                          albumList?.track ?? '',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
