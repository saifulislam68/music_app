import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:dhak_dhol/model/dummy_data.dart';
import 'package:dhak_dhol/screens/search/search_content.dart';
import 'package:dhak_dhol/utils/app_const.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int tag = 0;
  int val = 0;

  List<String> options = [
    'All',
    'Song',
    'Artists',
    'Album',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepBlue,
      appBar: AppBar(
        backgroundColor: AppColor.deepBlue,
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColor.backgroundColor2,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(.4),
                            ),
                            hintText: 'Search, artists, album',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(.4)),
                            suffixIcon: Icon(
                              Icons.mic,
                              color: Colors.white.withOpacity(.4),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Wrap(
            children: [
              ChipsChoice<int>.single(
                value: tag,
                onChanged: (val) => setState(() => tag = val),
                choiceItems: C2Choice.listFrom<int, String>(
                  source: options,
                  value: (i, v) => i,
                  label: (i, v) => v,
                ),
                choiceStyle: C2ChoiceStyle(
                    color: Color(0xffB1B1B1),
                    borderColor: AppColor.backgroundColor2,
                    backgroundColor: AppColor.backgroundColor2,
                    showCheckmark: false),
                choiceActiveStyle: C2ChoiceStyle(
                  showCheckmark: false,
                  color: AppColor.backgroundColor2,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: DummyData().selectMusic.length,
              itemBuilder: (context, index) {
                return SearchContent(
                  selectMusic: DummyData().selectMusic[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
