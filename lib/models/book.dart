class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num ratings;
  String review;
  num height;

  Book(
    this.type,
    this.name,
    this.publisher,
    this.date,
    this.imgUrl,
    this.score,
    this.ratings,
    this.review,
    this.height,
  );

  static List<Book> generateBooks() {
    return [

      Book(type, name, publisher, date, imgUrl, score, ratings, review, height)
    ];
  }
}
