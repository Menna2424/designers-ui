//

import 'package:designers_ui/model/designer_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class DesignerCard extends StatelessWidget {
  double fontsize = 10;
  final DesignerModel designer ;


  DesignerCard({required this.designer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        ClipPath(
         // clipper: ContainerCustomClipper(),
          child: Container(
            decoration: BoxDecoration(

              color: designer.color,
              borderRadius: BorderRadius.circular(15),
            ),
            width: 320,
            height: 130, // Fixed height to constrain the ListView
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 40),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: designer.image,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(designer.name,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 8,
                      ),
                      Text(designer.title,
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(designer.popularity,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: fontsize)),
                              Text("Popularity",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: fontsize)),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(designer.likes,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: fontsize)),
                              Text("Like",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: fontsize)),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(designer.followed,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: fontsize)),
                              Text("Followed",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: fontsize)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 10),
                    Icon(Icons.more_horiz, color: Colors.white),
                    SizedBox(height: 20),
                    Text("${designer.ran}", style: TextStyle(color: Colors.white, fontSize: 20)),
                    SizedBox(height: 5),
                    Text("Ranking",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
                SizedBox(
                  width: 10,

                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class ContainerCustomClipper extends CustomClipper<Path>{
  var path = Path();
  @override
  Path getClip(Size size) {

    path.lineTo(size.height*0.2, size.width);
    path.quadraticBezierTo(size.height*0.3, size.width*0.8, size.height*0.5,size.width*0.85);

return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return false;
  }



}