
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Expanded(child: Text("Download",style: GoogleFonts.montserrat(
          fontSize:10
        ),)),
        Icon(Icons.cast,color:Colors.white),
        kWidth,
        Container(
          width:40,
          height:40,
          color:Colors.blue
        )
      ],
    );
  }
}