import 'package:flutter/material.dart';

void main(){
  runApp(IssuePage());
}

class IssuePage extends StatelessWidget{ // Define app its starting point
  const IssuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Issue Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueGrey
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
          title: Center(child: Text("Issue Book")),
        ),
        body: Container(
            color: Colors.cyan,


            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: <Widget> [
                    Container(
                      // padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          ),
                        ),
                      ),
                    ),




                    Expanded(
                        child:Container(
                          height: 525,
                          color: Colors.grey,
                        )
                    )
                  ],),

              ),
            )
        ),
        );
    }

}