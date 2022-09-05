import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:flutter/material.dart';

class SongCategory extends StatelessWidget {
  final Music? songCategory;
  const SongCategory({Key? key, this.songCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              colors: [
                Color(0xFFFB7159),
                Color(0xFF7001B6),
              ],
              begin: FractionalOffset(3.0, 2.0),
              end: FractionalOffset(0.0, 4.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 6),
                child: Image.asset('assets/images/music_handaler.png'),
              ),
              Text(
                songCategory?.text ?? "",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
