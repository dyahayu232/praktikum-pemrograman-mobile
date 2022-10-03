import 'package:flutter/material.dart';
import 'package:praktikum_mobile_si/kuis/detail_page.dart';
import 'books_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          // shrinkWrap: true,
          itemBuilder: (context,index){
            final BooksData books = booksData[index];
            return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(place: books)));
                },
                child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SizedBox(
                          width: 200,
                          height: 100,
                          child: Card(
                            margin: EdgeInsets.zero,
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(books.imageLinks),
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,

                                ),
                              ),
                              child: Container(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end

                                  )
                              ),

                            ),

                          ),
                        )))
            );
          }),
    );

  }
}
