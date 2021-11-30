import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';

class BookReview extends StatelessWidget {
  final Book book;
  const BookReview({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "${book.score}",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              _buildStar(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${book.ratings} Ratings on Google Play",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 15,),
          Text.rich(TextSpan(children: [
            TextSpan(text: book.review,style: TextStyle(color: kFont,fontSize: 16,height: 1.8)),
            TextSpan(
              text: "Read More",style: TextStyle(
                color: kFont,fontSize: 16
              )
            )
          ]))
        ],
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3)
    ];

    return Row(
        children: color
            .map((e) => Icon(
                  Icons.star,
                  size: 25,
                  color: e,
                ))
            .toList());
  }
}
