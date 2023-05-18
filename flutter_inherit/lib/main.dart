 import 'package:flutter/material.dart';
void main(){

    runApp(Myapp());

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(displayName:"Senthil"),
      theme:ThemeData(
        primaryColor: Colors.brown
      )
 
    );
  }
}

class Home extends StatelessWidget{
  final String displayName;
        Widget build(BuildContext context){
          return Scaffold(
            body: Center(
              child: Text("${displayName}"),
            ),
          );
        }
}