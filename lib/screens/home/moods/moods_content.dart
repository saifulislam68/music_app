import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/moods/mood_details/Mood_details_screen.dart';
import 'package:flutter/material.dart';

class MoodsContent extends StatelessWidget {
  final Music? moods;
  const MoodsContent({Key? key, this.moods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MoodDetailsScreen(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
          child: Stack(
            children: [
              Image.asset(
                moods?.assetImage ?? "",
                height: 180,
                width: 170,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
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
                        moods?.title ?? '',
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
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
                            moods?.track ?? '',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
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
      ),
    );
  }
}
