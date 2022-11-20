import 'package:flutter/material.dart';

void main() => runApp( MeuApp() );

class MeuApp extends StatelessWidget {

  var textStyle = TextStyle(fontSize: 30, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App de teste")
        ),
        body: Center(
          child: Column(
            children: [
              Text( "Titulo", style: textStyle),
              Container(
                child: Icon(Icons.star, size: 50, color: Colors.blue)
              ),
              TextButton(onPressed: () {}, child: Text("..."))
            ],
          )
        )
        )
    );
  } 

}

