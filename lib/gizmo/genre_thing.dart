import 'package:bookies/ScreenPage/genres_book_screen.dart';
import 'package:flutter/material.dart';

class GenreThing extends StatelessWidget {
  final String id;
  final String title;
  final Color color;


  const GenreThing(this.id, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, GenresBookScreen.directName, arguments: {
          'id': id,
          'title': title,
        });
      },
      child: Container(
        padding:  EdgeInsets.all(10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                color.withOpacity(0.5),
                color
                
              ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15)
      ),
      ),
    );
  }
}
