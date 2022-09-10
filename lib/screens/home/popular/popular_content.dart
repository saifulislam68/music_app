import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:flutter/material.dart';

class PopularContent extends StatelessWidget {
  final Music? popular;
  const PopularContent({Key? key, this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            popular?.assetImage ?? "",
            height: 120,
            width: 120,
            fit: BoxFit.cover,
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
                popular?.track ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 15,
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
            popular?.title ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
