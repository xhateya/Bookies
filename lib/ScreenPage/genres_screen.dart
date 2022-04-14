
import 'package:bookies/gizmo/genre_thing.dart';
import 'package:bookies/model/genre.dart';
import 'package:flutter/material.dart';

class GenresScreen extends StatelessWidget {
  const GenresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 70
        ),
    itemCount: genres.length,
    padding: const EdgeInsets.all(20),
    itemBuilder:(context, index) {
          return GenreThing(
              genres[index].id,
              genres[index].title,
              genres[index].color
          );
    }),
    );
  }
}
