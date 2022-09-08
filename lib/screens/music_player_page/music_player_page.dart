import 'package:dhak_dhol/screens/select_music_list/select_music_screen.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        title: const Text('Playing music'),
        backgroundColor: AppColor.deepBlue,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/music_play1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/music_handaler.png',
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Elease of Letraset sheets contain',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              children: [
                Image.asset('assets/images/thumbs_up.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '300',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/images/comment.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '50',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assets/images/download_icon.png'),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff94999F).withOpacity(.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white.withOpacity(.7)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff94999F).withOpacity(.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
                    child: Text(
                      "Lyrics",
                      style: TextStyle(color: Colors.white.withOpacity(.7)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Hampden-Sydney',
              style: TextStyle(color: Colors.white.withOpacity(.4)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //////////// Music Slider ////////////
          Row(children: [
            Expanded(
                child: Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 20.0,
                    activeColor: const Color(0xffFC455D),
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    })),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  '03:59',
                  style: TextStyle(color: Colors.white.withOpacity(.4)),
                ),
                const Spacer(),
                Text(
                  '5:00',
                  style: TextStyle(color: Colors.white.withOpacity(.4)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/love_icon.png"),
              Image.asset('assets/images/equlizer.png'),
              Image.asset('assets/images/backword_play.png'),
              Image.asset('assets/images/music_paly_handaler.png'),
              Image.asset('assets/images/forward_play.png'),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectMusicScreen(),
                        ));
                  },
                  child: Image.asset('assets/images/mark_category_icon.png')),
              Image.asset('assets/images/replay_icon.png'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset('assets/images/music_bit.png')
        ],
      ),
    );
  }
}
