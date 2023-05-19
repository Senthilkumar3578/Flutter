 import 'package:flutter/material.dart';

 void main(){
  runApp(MaterialApp(
      home: MyApp(),
  ));
 }

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("please click"),
            ElevatedButton(
            child: const Text("GetInfo"),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Informationpage(),
                  )
              );
            },
            )
          ],
        ),
      ),
      
    );
  }
}

class Informationpage extends StatelessWidget {
  const Informationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: const Text("This is information page"),
       ),
    );
  }
}