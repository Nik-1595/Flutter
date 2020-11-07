import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
  home:QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListSatate createState() => _QuoteListSatate();
}

class _QuoteListSatate extends State<QuoteList> {

  List<quote> quotes =[

    quote(author:'NIkhil',text:'naan iruvude ninagaagi dsdsjakjsacjksahckjsahnckjsa'),
    quote(author:'bazzak',text:'neen iruvadue nanagaagi scnsajcnsajcnksnckjsnckajsncka'),

  ];

  Widget quoteTemplate(quote){
      return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 6.0),
              FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.delete),
                  label: Text('delete quote'),
              )
            ],
          ),
        ),
      );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Awesome'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      )

    );
  }
}
