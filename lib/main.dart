import 'package:flutter/material.dart';

void main(){
    runApp(MaterialApp(

      home: MyApp(),

    ));

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(

        title: Text('My First App'),

        centerTitle: true,

        backgroundColor: Colors.redAccent,

      ),

      body:

        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.deepOrange,
              child: Text('One'),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyanAccent,
              child: Text('two'),
            ),
            Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.green,
              child: Text('three'),
            ),
          ],
        )
      ,


      floatingActionButton: FloatingActionButton(

        onPressed: (){},

        child: Text('click'),

        backgroundColor: Colors.deepOrangeAccent,

      ),

    );
  }
}




