import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/home/artists/artists_details/artists_details_page.dart';
import 'package:dhak_dhol/screens/home/artists/artists_page.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class ArtistsDetailsScreen extends StatelessWidget {
  const ArtistsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.deepBlue,
        title: Text('Artists'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 3 / 2,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: DummyData().artists.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return ArtistsDetailsPage(
                      artists: DummyData().artists[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
