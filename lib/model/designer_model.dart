import 'package:flutter/material.dart';

class DesignerModel{
   String name ;
   Color color;
   String title ;
   String popularity;
   String likes ;
   String followed;
   static int rank=1;
   late int ran;
   AssetImage image;

   DesignerModel({required this.image, required this.name,required this.color,required this.title, required this.popularity,required this.likes,
      required this.followed}){
     ran=rank;
     rank++;

   }


}



List<DesignerModel> designers =[
  DesignerModel(image:AssetImage("images/profile.jpg") ,color: Colors.cyan,title: "Title: Flying wings",followed:"136",likes: "4736", popularity: "2342",name: "David Borg" ),
  DesignerModel(image:AssetImage("images/profile.jpg") ,color: Colors.orange,title: "Growing up trouble",followed:"136",likes: "4736", popularity: "2342",name: "Lucy" ),
  DesignerModel(image:AssetImage("images/profile.jpg") ,color: Colors.pinkAccent,title: "Title: Sculotor's",followed:"136",likes: "4736", popularity: "2342",name: "Jerry Cool West" ),
  DesignerModel(image:AssetImage("images/profile.jpg") ,color: Colors.deepPurpleAccent,title: "Title:Illustration of little girl",followed:"136",likes: "4736", popularity: "2342",name: "Bold" ),
  DesignerModel(image:AssetImage("images/profile.jpg") ,color: Colors.greenAccent,title: "Title: Flying wings",followed:"136",likes: "4736", popularity: "2342",name: "David Borg" ),



];
