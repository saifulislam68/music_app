import 'package:flutter/material.dart';

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/artists_woman.png',
          height: 180,
          width: 160,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: Container(
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
