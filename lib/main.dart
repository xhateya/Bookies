import 'package:bookies/ScreenPage/genres_book_screen.dart';
import 'package:bookies/ScreenPage/homescreen.dart';
import 'package:bookies/ScreenPage/section_book_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'model/book.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State <MyApp>{
  final List<Book> _likedBook = [];

  void _switchBookmark(String bookId){
    final existingIndex =
    _likedBook.indexWhere((book) => book.id == bookId);
    if(existingIndex >= 0){
      setState(() {
        _likedBook.removeAt(existingIndex);
      });
    }else{
      setState(() {
        _likedBook.add(books.firstWhere((book) => book.id == bookId));
      });
    }
  }
  bool _ensueBookBookmark(String bookId){
    return _likedBook.any((book) => book.id == bookId);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.brown,
          ).copyWith(
              secondary: Colors.orangeAccent
          ),
          canvasColor: const Color.fromRGBO(225, 254, 229, 0.8235294117647058),
          fontFamily: 'RobotoCondensed',
          textTheme:  ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                  color: Color.fromRGBO(20, 52, 51, 1.0)
              ),
              bodyText2: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1)
              ),
              headline6: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              )
          )
      ),
      initialRoute: '/',
      routes: {
        '/': (context)=> HomeScreen(_likedBook),
        GenresBookScreen.directName: (context)=> GenresBookScreen(),
        SectionBookScreen.directsName : (context)=> SectionBookScreen(_switchBookmark, _ensueBookBookmark)
      },
    );
  }
}