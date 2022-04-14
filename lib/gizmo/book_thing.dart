

import 'package:bookies/ScreenPage/section_book_screen.dart';
import 'package:bookies/model/book.dart';
import 'package:flutter/material.dart';

class BookThing extends StatelessWidget {
  final String id;
  final List<String> genre;
  final String title;
  final String imgUrl;
  final ByAge byAge;
  final ByRate byRate;
  final String author;
  final String dateRelease;
  final String content;



  BookThing({
    required this.id,
    required this.title,
    required this.genre,
    required this.imgUrl,
    required this.byAge,
    required this.byRate,
    required this.author,
    required this.dateRelease,
    required this.content

  });



  String get byAgeText{
    switch (byAge){
      case ByAge.Kids:
        return'Kids';
      case ByAge.Teen:
        return'Teen';
      case ByAge.Adult:
        return'Adult';
      default:
        return 'Unknown';

    }
  }
   String get byRateText{
     switch(byRate){
       case ByRate.Good :
         return 'Good';
       case ByRate.Bestseller:
         return 'Bestseller';
       case ByRate.Recommended:
         return'Recommended';
      default:
        return'Unknown';

     }
   }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, SectionBookScreen.directsName, arguments: id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child:  Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                  ),
                  child: Image.network(imgUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                ),
                Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                    )
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.all_inclusive_outlined),
                      const SizedBox(width: 6,),
                      Text(byAgeText)
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.animation),
                      const SizedBox(width: 6,),
                      Text(byRateText)
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
