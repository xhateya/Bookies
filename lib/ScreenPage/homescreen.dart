import 'package:bookies/ScreenPage/bookmark_book.dart';
import 'package:bookies/ScreenPage/genres_screen.dart';
import 'package:bookies/model/book.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final List<Book> bookmarkBook;
  HomeScreen(this.bookmarkBook);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic >>? _recto;
  int _chosenIndexPage = 0 ;


  @override
  void initState() {
    _recto =[
      {
        'rectos': GenresScreen(),
        'title': 'Genres '
      },
      {'rectos': BookmarkBook(widget.bookmarkBook),
        'title': 'Bookmark'
      }
    ];
    super.initState();
  }
  void _chosenPage(int index){
    setState(() {
      _chosenIndexPage = index;
    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_recto![_chosenIndexPage]['title']),
      ),
      body: _recto![_chosenIndexPage]['rectos'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _chosenPage,
          backgroundColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _chosenIndexPage,
          items:  const [
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_awesome),
                label: 'Genre'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border_rounded),
                label: 'Bookmark'
            ),
          ]
      ),
    );
  }
}
