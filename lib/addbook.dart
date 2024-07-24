import 'package:flutter/material.dart';

void main(){
  runApp(AddBook());
}

class AddBook extends StatelessWidget{
  const AddBook({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book Detail",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white24
      ),
      home: DashBoardScreen(),

    );
  }

}
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(// create object of appbar
          title: Center(child: Text("Book Detail")),
        ),


        body: Container(
                width:800,

                color: Colors.white,
          padding: EdgeInsets.only(right: 26),
                child: ListView(
                  children: <Widget>[
                    new ListTile(

                      title: Row(
                        children: <Widget>[
                        Expanded(
                        flex: 5,
                        child: Text(
                          "Book ID: ",
                          style: TextStyle(fontSize: 22,height: 1)
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),                           hintText: 'Enter title',
                          ),
                        ),
                      ),
          ],
        ),
    ),




                    new ListTile(

                      title: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Classification: ",
                              style: TextStyle(fontSize: 22,height: 1),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Classification ',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    new ListTile(

                      title: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Title: ",
                              style: TextStyle(fontSize: 22,height: 1),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter title',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    new ListTile(

                      title: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Author: ",
                              style: TextStyle(fontSize: 22,height: 1),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Author ',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new ListTile(

                      title: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Shelf: ",
                              style: TextStyle(fontSize: 22,height: 1),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Shelf',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new ListTile(

                      title: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Pages: ",
                              style: TextStyle(fontSize: 22,height: 1),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),

                                hintText: 'Enter Pages',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new ListTile(

                      title: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Edition: ",
                              style: TextStyle(fontSize: 22,height: 1),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),

                                hintText: 'Enter Edition',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new ListTile(

                        title: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Image: ",
                                style: TextStyle(fontSize: 22, height: 1),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: ElevatedButton(
                                child: Text('Upload Image'),
                                onPressed: () {
                                  // Add image upload logic here
                                  // For example:
                                  // ImagePicker().getImage(source: ImageSource.gallery);
                                },
                              ),
                            ),
                          ],
                        )
                    ),


                  ],


                ),

              ),


              //Text("Edition", style: TextStyle(fontSize: 25),),
              //Text("Quantity", style: TextStyle(fontSize: 25),)









        );
    }

}