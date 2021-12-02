import 'package:ebook_app/constants/colors.dart';
import 'package:flutter/material.dart';

import 'widgets/book_staggered_gridView.dart';
import 'widgets/custom_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  var bottomIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBAr(),
      body: Column(
        children: [
          CustomTab(
              selectdindex: tabIndex,
              callback: (int index) {
                setState(() {
                  tabIndex = index;
                });

                pageController.jumpToPage(index);
              }),
          Expanded(
              child: BookStaggeredGridView(
                  selected: tabIndex,
                  pageController: pageController,
                  callback: (int index) {
                    setState(() {
                      tabIndex = index;
                    });
                  }))
        ],
      ),
      bottomNavigationBar: _buildBotomNavigationBar(),
    );
  }

  AppBar _buildAppBAr() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_rounded,
            color: kFont,
          )),
      title: Text(
        "All Books",
        style: TextStyle(color: kFont, fontSize: 18),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.search_outlined, color: kFont))
      ],
    );
  }

  Widget _buildBotomNavigationBar() {
    final bottoms = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline,
    ];
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 56,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    bottomIndex = index;
                  });
                },
                child: Container(
                  width: (width - 40) / 5,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: bottomIndex == index
                      ? BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                          width: 3,
                          color: Colors.deepOrange,
                        )))
                      : null,
                  child: Icon(
                    bottoms[index],
                    size: 30,
                    color: bottomIndex == index ? kFont : Colors.grey[400],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: bottoms.length),
    );
  }
}
