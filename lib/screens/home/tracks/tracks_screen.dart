import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/tracks/tracks_content.dart';
import 'package:flutter/material.dart';

class TracksScreen extends StatelessWidget {
  const TracksScreen({Key? key}) : super(key: key);

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
                  'Tracks',
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
          height: 195,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData().tracks.length,
            itemBuilder: (context, index) {
              return TracksContent(
                tracks: DummyData().tracks[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
