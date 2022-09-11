import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/my_bookmark/my_bookmark_content.dart';
import 'package:flutter/material.dart';

class MyBookmarkScreen extends StatelessWidget {
  const MyBookmarkScreen({Key? key}) : super(key: key);

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
                  'My bookmark',
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
            ],
          ),
        ),
        SizedBox(
          height: 195,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData().myBookmark.length,
            itemBuilder: (context, index) {
              return MyBookmarkContent(
                myBookmark: DummyData().myBookmark[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
