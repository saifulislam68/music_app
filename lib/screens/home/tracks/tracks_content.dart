import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:flutter/material.dart';

class TracksContent extends StatelessWidget {
  final Music? tracks;
  const TracksContent({Key? key, this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 4,
            color: Colors.transparent,
            child: Image.asset(
              tracks?.assetImage ?? "",
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset('assets/images/music_handaler.png'),
              ),
              Text(
                tracks?.track ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/images/dot_handaler.png',
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            tracks?.title ?? '',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
