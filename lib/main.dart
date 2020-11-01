import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}



class MyApp extends StatefulWidget {

    @override
    State<StatefulWidget> createState(){
      return MyAppState();
    }
}

class MyAppState extends State<MyApp>{


  var questionIndex = 0;

  void answer(){
    setState(() {

        questionIndex = questionIndex +1 ;


    });

  }

    @override
    Widget build(BuildContext ctx){

        var question=[
          'What\'s your favourite animal',
          'What\'s your favourite color',
        ];

          return MaterialApp(home: Scaffold(
            appBar: AppBar(title: Text('My First App'),),
            body: Column(
              children: [
                Text(
                    question[questionIndex],
                ),
                RaisedButton(
                    child: Text('Answer'),
                    onPressed: answer),
                RaisedButton(
                    child: Text('Answer 1'),
                    onPressed: answer),
                RaisedButton(
                    child: Text('Answer 2'),
                    onPressed: answer)
              ],
            ),
          ));
    }
}