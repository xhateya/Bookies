import 'package:bookies/gizmo/book_thing.dart';
import 'package:bookies/model/book.dart';
import 'package:flutter/material.dart';

class BookmarkBook extends StatelessWidget {

  final List<Book>bookmarkBooks;
  BookmarkBook(this.bookmarkBooks);




  @override
  Widget build(BuildContext context) {
    if(bookmarkBooks.isEmpty){
      return const Center(
        child: Text("You have no Bookmarks yet - start adding some!"),
      );
    }else{
      return ListView.builder(
        itemBuilder: (context, index){
          return BookThing(
              id: bookmarkBooks[index].id,
              title: bookmarkBooks[index].title,
              genre: bookmarkBooks[index].genre,
              imgUrl: bookmarkBooks[index].imgUrl,
              byAge: bookmarkBooks[index].byAge,
              byRate: bookmarkBooks[index].byRate,
              author: bookmarkBooks[index].author,
              dateRelease: bookmarkBooks[index].dateRelease,
              content: bookmarkBooks[index].content
          );
        },
        itemCount: bookmarkBooks.length,
      );

    }

  }
}
