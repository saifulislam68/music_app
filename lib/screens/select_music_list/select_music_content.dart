import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class SelectMusicContent extends StatelessWidget {
  const SelectMusicContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        title: const Text('Select Music'),
        backgroundColor: AppColor.deepBlue,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/select_music1.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/music_handaler.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Hollywood music has",
                            style:
                                TextStyle(color: Colors.white.withOpacity(.8)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "Hampden Sydney",
                            style:
                                TextStyle(color: Colors.white.withOpacity(.8)),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            "00:03:59",
                            style:
                                TextStyle(color: Colors.white.withOpacity(.8)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
