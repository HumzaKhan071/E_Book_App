import 'package:flutter/material.dart';
import 'package:flutter_ebook_ui/constants/colors.dart';
import 'package:flutter_ebook_ui/pages/home/widgets/custom_tab.dart';

import 'widgets/BookStaggeredGridView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
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
}
