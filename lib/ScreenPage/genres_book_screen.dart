import 'package:bookies/gizmo/book_thing.dart';
import 'package:bookies/model/book.dart';
import 'package:flutter/material.dart';

class GenresBookScreen extends StatelessWidget {

  static const directName = '/genre-book';

  @override
  Widget build(BuildContext context) {
    final directArgs= ModalRoute
    .of(context)!
    .settings
    .arguments as Map<String, String>;

    final genreId = directArgs["id"];
    final genreAccolade = directArgs["title"];

    final genresBooks = books.where((bookThing) =>
        bookThing.genre.contains(genreId)).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(genreAccolade!),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            return BookThing(
                id: genresBooks[index].id,
                title: genresBooks[index].title,
                genre: genresBooks[index].genre,
                imgUrl: genresBooks[index].imgUrl,
                byAge: genresBooks[index].byAge,
                byRate: genresBooks[index].byRate,
                author: genresBooks[index].author,
                dateRelease: genresBooks[index].dateRelease,
                content: genresBooks[index].content
            );

          },
        itemCount: genresBooks.length,
      ),
    );
  }
}
