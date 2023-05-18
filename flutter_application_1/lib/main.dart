import 'package:flutter/material.dart';

void main()=>runApp(new MaterialApp(
  home: new Myapp(),
));
    


 class Myapp extends StatefulWidget {
  //const MyWidget({super.key});

  @override
  State<Myapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.menu),
          onPressed: (){
            print('icon click');
          },
        ),
        title: Text('welcom page'),
        actions:<Widget> [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more),
            onPressed: (){},
          )
        ],
      ),
    );
      
  }
}