import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/pages/home/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;
  BookStaggeredGridView(
      {Key? key,
      required this.selected,
      required this.pageController,
      required this.callback})
      : super(key: key);

  final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 4,
              itemCount: bookList.length,
              itemBuilder: (_, index) => BookItem(
                    book: bookList[index],
                  ),
              staggeredTileBuilder: (_) => StaggeredTile.fit(2)),
          Container(),
        ],
      ),
    );
  }
}
