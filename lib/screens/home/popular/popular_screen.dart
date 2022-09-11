import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/popular/popular_content.dart';
import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

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
                  'Popular',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
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
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset('assets/images/forward.png'),
              )
            ],
          ),
        ),
        SizedBox(
          height: 195,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData().popular.length,
            itemBuilder: (context, index) {
              return PopularContent(
                popular: DummyData().popular[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
