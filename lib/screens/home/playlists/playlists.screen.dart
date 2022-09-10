import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/playlists/playlists_content.dart';
import 'package:flutter/material.dart';

class PlaylistsScreen extends StatelessWidget {
  const PlaylistsScreen({Key? key}) : super(key: key);

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
                  'Playlists',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/headphone_handaler.png'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData().playlists.length,
            itemBuilder: (context, index) {
              return PlaylistsContent(
                playlists: DummyData().playlists[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
