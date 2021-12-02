import 'package:ebook_app/constants/colors.dart';
import 'package:flutter/material.dart';


class CustomTab extends StatelessWidget {
  final int selectdindex;
  final Function callback;

  CustomTab({Key? key, required this.selectdindex, required this.callback})
      : super(key: key);

  final tabs = ["Ebooks", "Audio Books"];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 56,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 5),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  alignment: Alignment.center,
                  width: (width - 40) / 2 - 10,
                  decoration: BoxDecoration(
                    color:
                        selectdindex == index ? Colors.white : Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    tabs[index],
                    style: TextStyle(color: kFont, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: tabs.length),
    );
  }
}
