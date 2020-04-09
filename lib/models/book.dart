class Book {
  final String title;
  final String author;

  Book(this.title, this.author);

  Map<String, dynamic> toJSON() =>
      <String, dynamic>{'title': this.title, 'author': this.author};

  factory Book.fromJSON(Map<String, dynamic> json) => new Book(
        json['title'],
        json['author'],
      );

  Book copyWith({String name, String author}) {
    return new Book(
      title ?? this.title,
      author ?? this.author,
    );
  }

  @override
  String toString() {
    return '{title: $title, author: $author}';
  }
}
