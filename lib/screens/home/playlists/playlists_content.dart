import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:flutter/material.dart';

class PlaylistsContent extends StatelessWidget {
  final Music? playlists;
  const PlaylistsContent({Key? key, this.playlists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      playlists?.assetImage ?? "",
                    ),
                  ),
                ),
                height: 91,
                width: 107,
              ),
              Container(
                height: 91,
                width: 107,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Color(0xff7001B6).withOpacity(0.9),
                      Color(0xffFB7159).withOpacity(0.6),
                    ],
                    stops: const [0.0, 5.0],
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  bottom: 0,
                  top: 0,
                  right: 0,
                  child: Image.asset('assets/images/play_handaler.png'))
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset('assets/images/music_handaler.png'),
              ),
              Text(
                playlists?.track ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
