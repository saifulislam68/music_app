import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/artists/artists_song_details/artists_song_details_Screen.dart';
import 'package:flutter/material.dart';

class ArtistsDetailsPage extends StatelessWidget {
  final Music? artists;
  const ArtistsDetailsPage({Key? key, this.artists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ArtistsSongDetailsScreen(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8),
        child: Stack(
          children: [
            Image.asset(
              artists?.assetImage ?? "",
              width: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: -8,
              right: -8,
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      topLeft: Radius.circular(80)),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFF7001B6),
                        Color(0xFFFB7159),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.5],
                      tileMode: TileMode.clamp),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      artists?.title ?? '',
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child:
                              Image.asset('assets/images/music_handaler.png'),
                        ),
                        Text(
                          artists?.track ?? '',
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
