


import 'package:flutter/material.dart';

class AppBaar extends StatefulWidget {
  const AppBaar({super.key});

  @override
  State<AppBaar> createState() => _AppBaarState();
}

class _AppBaarState extends State<AppBaar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(

      bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorPadding: EdgeInsets.only(right: 20,left: 20),
          tabs: [
            Tab(child: Text("Designer"),),
            Tab(child: Text("Category"),),
            Tab(child: Text("Attention"),),


          ]),
      backgroundColor: Colors.deepPurple,
      leading: BackButton(color: Colors.white),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.menu, color: Colors.white,),
        ),
      ],

    );
  }
}

