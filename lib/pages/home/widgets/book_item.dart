import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/pages/detail/detail.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;

  const BookItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage(book: book,))),
      child: Container(
        height: book.height as double,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(book.imgUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
