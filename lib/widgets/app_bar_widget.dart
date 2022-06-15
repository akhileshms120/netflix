
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({required this.title,});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Expanded(child: Text(title,style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),),
        Icon(Icons.cast,color:Colors.white,size: 30,),
        kWidth,
        Container(
          width:40,
          height:40,
          color:Colors.blue
        ),
        kWidth
      ],
    );
  }
}