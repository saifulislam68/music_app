import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/moods/moods_content.dart';
import 'package:flutter/material.dart';

class MoodsScreen extends StatelessWidget {
  const MoodsScreen({Key? key}) : super(key: key);

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
                  'Moods',
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
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  'More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset('assets/images/forward.png'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData().moods.length,
            itemBuilder: (context, index) {
              return MoodsContent(
                moods: DummyData().moods[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
