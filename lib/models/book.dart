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
      Book(
          "FICTION",
          "How Beautiful We Were",
          "Imbolo Mbue",
          DateTime(2016, 3, 23),
          "assets/images/book1.jpeg",
          4.7,
          892,
          "Through the eyes of Kosawa’s citizens young and old, Mbue constructs a nuanced exploration of self-interest, of what it means to want in the age of capitalism and colonialism — these machines of malicious, insatiable wanting.",
          220.0),
      Book(
          "Love",
          "Intimacies",
          "Katie Kitamura",
          DateTime(2016, 3, 23),
          "assets/images/book2.jpeg",
          4.7,
          892,
          "In Kitamura’s fourth novel, an unnamed court translator in The Hague is tasked with intimately vanishing into the voices and stories of war criminals whom she alone can communicate with; falling meanwhile into a tumultuous entanglement with a man whose marriage may or may not be over for good",
          225.0),
      Book(
          "Love",
          "The Love Songs of W.E.B. Du Bois",
          "Honorée Fanonne Jeffers",
          DateTime(2016, 3, 23),
          "assets/images/book3.jpeg",
          4.7,
          892,
          "“The Love Songs of W.E.B. Du Bois,” the first novel by Jeffers, a celebrated poet, is many things at once: a moving coming-of-age saga, an examination of race and an excavation of American history. ",
          230.0),
      Book(
          "Love",
          "No One Is Talking About This",
          "Patricia Lockwood",
          DateTime(2016, 3, 23),
          "assets/images/book4.jpeg",
          4.7,
          892,
          "“Here, in her first novel, she distills the pleasures and deprivations of life split between online and flesh-and-blood interactions, transfiguring the dissonance into art.  ",
          235.0),
      Book(
          "Fiction",
          "When We Cease to Understand the World",
          "Benjamín Labatut",
          DateTime(2016, 3, 23),
          "assets/images/book5.jpeg",
          4.7,
          892,
          "his extraordinary hybrid of fiction and nonfiction also provokes the frisson of an extended true-or-false test: The further we read, the blurrier the line gets between fact and fabulism.",
          240.0),
      Book(
          "Fiction",
          "The Copenhagen Trilogy",
          " Tove Ditlevsen",
          DateTime(2016, 3, 23),
          "assets/images/book6.jpeg",
          4.7,
          892,
          "Ditlevsen’s gorgeous memoirs, first published in Denmark in the 1960s and ’70s and collected here in a single volume, detail her hardscrabble upbringing, career path and merciless addictions: a powerful account of the struggle to reconcile art and life.",
          245.0),
    ];
  }
}
