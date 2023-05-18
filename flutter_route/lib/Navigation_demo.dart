
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

 class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firstpage'),),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const Text('First route'),
            ElevatedButton( 
              child: const Text('open second route'),
              onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const  Secondpage(), 
                        ),
                    );
              },
            ),
              const SizedBox(height: 30,),
              ElevatedButton( 
                child: const Text('Go back'),
                onPressed: (){
                  Navigator.of(context).pop();
                },
               )

          ],
        ),
      ),
    );
  }
}


class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Secondpage'),),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const Text('Second route'),
            ElevatedButton( 
              child: const Text('open Third route'),
              onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const  Thirdpage(), 
                        ),
                    );
              },
            ),
              const SizedBox(height: 30,),
              ElevatedButton( 
                child: const Text('Go back'),
                onPressed: (){
                  Navigator.of(context).pop();
                },
               )

          ],
        ),
      ),
    );
  }
}


class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thirdpage'),),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const Text('Third route'),
             ElevatedButton( 
              child: const Text('GoBack'),
              onPressed: (){
                Navigator.of(context).pop();
              },

             )
          ],
        ),
      ),
    );
  }
}