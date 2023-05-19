 import 'dart:ffi';

import 'package:flutter/material.dart';

 void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
 }

 

class MyApp extends StatefulWidget {
  @override
  _StickyHeaderExampleState createState() => _StickyHeaderExampleState();
}

class _StickyHeaderExampleState extends State<MyApp> {
  late ScrollController _scrollController;
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        _isScrolled = _scrollController.offset > 0;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sticky Header'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('Item $index'),
              ),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}













           //Sliver App bar
 /*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
        slivers: [
           SliverAppBar(
            pinned: true,
            
            title: Text("Heders"), 
            expandedHeight: 150,
          ),
          SliverToBoxAdapter(
            child: Text(
              "People generally prefer to spend on things based on recommendations from those they trust"
              "So Popular peopuls and celebrties and adds they are said our products defently bye the product Clearly articulate the unique benefits and value your software product offers. Identify how it solves a problem or improves the lives of your target customersfor visitors to contact you or make a purchaseBlog posts tutorialsvideos podcasts and social media contentBut social networks can actually be an essential platform if approached with the right frame of mind, objectives and strateg"
"Leverage popular social media platforms where your target audience is active. Share engaging content, interact with users, run contests or giveaways, and utilize paid advertising options available on social media platforms"
"People generally prefer to spend on things based on recommendations from those they trust"
              "So Popular peopuls and celebrties and adds they are said our products defently bye the product Clearly articulate the unique benefits and value your software product offers. Identify how it solves a problem or improves the lives of your target customersfor visitors to contact you or make a purchaseBlog posts tutorialsvideos podcasts and social media contentBut social networks can actually be an essential platform if approached with the right frame of mind, objectives and strateg"
"Leverage popular social media platforms where your target audience is active. Share engaging content, interact with users, run contests or giveaways, and utilize paid advertising options available on social media platforms"
               "People generally prefer to spend on things based on recommendations from those they trust"
              "So Popular peopuls and celebrties and adds they are said our products defently bye the product Clearly articulate the unique benefits and value your software product offers. Identify how it solves a problem or improves the lives of your target customersfor visitors to contact you or make a purchaseBlog posts tutorialsvideos podcasts and social media contentBut social networks can actually be an essential platform if approached with the right frame of mind, objectives and strateg"
"Leverage popular social media platforms where your target audience is active. Share engaging content, interact with users, run contests or giveaways, and utilize paid advertising options available on social media platforms"
               "People generally prefer to spend on things based on recommendations from those they trust"
              "So Popular peopuls and celebrties and adds they are said our products defently bye the product Clearly articulate the unique benefits and value your software product offers. Identify how it solves a problem or improves the lives of your target customersfor visitors to contact you or make a purchaseBlog posts tutorialsvideos podcasts and social media contentBut social networks can actually be an essential platform if approached with the right frame of mind, objectives and strateg"
"Leverage popular social media platforms where your target audience is active. Share engaging content, interact with users, run contests or giveaways, and utilize paid advertising options available on social media platforms"
               
               
                ),
          )
        ],
      ),
    );
  }
}*/