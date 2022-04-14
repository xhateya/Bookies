import 'package:bookies/model/book.dart';
import 'package:bookies/utils/utils.dart';
import 'package:flutter/material.dart';

class SectionBookScreen extends StatelessWidget {

  static const directsName = '/book-section';

  final Function switchBookmark;
  final Function ensueBookmark;

  const SectionBookScreen(this.switchBookmark, this.ensueBookmark);

  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context)!.settings.arguments as String;
    final chosenBook = books.firstWhere((book) => book.id == bookId);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(chosenBook.imgUrl, fit: BoxFit.cover,
              height: 350,),
            ),
            ListView(
              children: [
                const SizedBox(height: 330,),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(chosenBook.title.toString(),
                          style: accoladeBook.copyWith(
                            fontSize: 24
                          ),),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //author
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:  [
                                Icon(Icons.account_circle_rounded, size: 24, color: Colors.brown,),
                                const SizedBox(width: 10,),
                                Text(chosenBook.author,
                                style: authorBook.copyWith(
                                  fontSize: 14
                                ),)
                                ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:  [
                                Icon(Icons.calendar_today_rounded,size: 24,),
                                const SizedBox(width: 10,),
                                Text(chosenBook.dateRelease.toString(), textAlign: TextAlign.left,style: sectionBook.copyWith(
                                  fontSize: 16
                                ),)

                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Text(chosenBook.content.toString(),textAlign: TextAlign.left, style: sectionBook.copyWith(
                          fontSize: 16
                        ),)
                      ],
                    ),

                  ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 10),
                          blurRadius: 50
                        )
                      ]
                    ),
                    child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_rounded)),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0,10),
                          blurRadius: 50
                        )
                      ]
                    ),
                    child: IconButton(
                        onPressed: () => switchBookmark(bookId),
                        icon: Icon(
                          ensueBookmark(bookId)?Icons.bookmark : Icons.bookmark_border_rounded, color: Colors.black54,
                        ),
                    ),
              ),
            ],
            ),
            )
                    ],
      )
    ),
    );
  }
  Widget buildSectionTitle(BuildContext context, String text){
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(text, style: Theme.of(context).textTheme.headline6,),
    );
  }

  Widget buildContainer(BuildContext context, Widget child){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: child,

    );
  }

}
