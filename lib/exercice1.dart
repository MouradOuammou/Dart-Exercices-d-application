class Book {
  String title;
  String author;
  int year;
  bool isAvailable;

  Book(this.title, this.author, this.year, [this.isAvailable = false]);

  Book.available(this.title, this.author, this.year) : isAvailable = true;
}

class Library {
  final List<Book> _books = [];

  void addBook(Book book) => _books.add(book);

  void borrowBook(String title) {
    final book = _books.firstWhere((b) => b.title == title);
    book.isAvailable = false;
  }

  List<Book> getAvailableBooks() => _books.where((b) => b.isAvailable).toList();
}

void displayBooks(List<Book> books) {
  for (final book in books) {
    print('Titre: ${book.title}, Auteur: ${book.author} (Année: ${book.year})');
  }
}

extension LibraryExtension on Library {
  Library operator +(Library other) {
    final newLibrary = Library();
    newLibrary._books.addAll(_books);
    newLibrary._books.addAll(other._books);
    return newLibrary;
  }
}

void main() {
  final book1 = Book.available('Dart Guide', 'John Doe', 2023);
  final book2 = Book.available('Flutter Basics', 'Jane Smith', 2022);
  final book3 = Book('Advanced Dart', 'Alice Johnson', 2021);

  final library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  library.borrowBook('Flutter Basics');

  print('Livres disponibles :');
  displayBooks(library.getAvailableBooks());

  final otherLibrary = Library();
  otherLibrary.addBook(Book.available('New Book', 'Author', 2023));

  final mergedLibrary = library + otherLibrary;
  print('\n Bibliothèque fusionnée:');
  displayBooks(mergedLibrary.getAvailableBooks());
}