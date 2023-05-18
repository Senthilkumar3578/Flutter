import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:'Bottom Navigation bar',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  //const MyWidget({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}


class _MyWidgetState extends State<MyApp> { 
     
     final tabs=[
          Center(child: Text('Home'),),   
          Center(child: Text('Search'),),
          Center(child: Text('persons'),),
          
     ];

         int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation bar'),),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
            currentIndex: index,
            iconSize: 20,
            selectedFontSize: 20,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:("Home")

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label:("Sercah"),
            backgroundColor: Colors.blue
          
          ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ("Mens"),
               backgroundColor: Colors.amberAccent
            ),
        ],
        onTap: (current_index){
          setState(() {
            index=current_index;
          });
        }
      ),

    );
  }
}