import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';

class ScreenDownload extends StatelessWidget {
 
 

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Scaffold(
      body:ListView(
        children: [
          Row(
            children: [
              kWidth,
              Icon(Icons.settings,color: kWhite,),
              kWidth,
              Text("Smart Downloads")
            ],
          ),
          Text("Introducing Download For you"),
          Text("We will download a personalised selection of movies and shows for you so there is always something to watch on your device"),
          Container(
            width: size.width,
            height: size.height,
          ),
          MaterialButton(onPressed: (){},
          child: Text("Set up" ,style: TextStyle(fontSize: 20,color: kWhite,fontWeight: FontWeight.bold),),
          color: kButtonColor,
          ),
          SizedBox(height: 10,),
          MaterialButton(onPressed: (){},
          child: Text("See what you can Download" ,style: TextStyle(fontSize: 20,color: kBlack,fontWeight: FontWeight.bold),),
          color: kButtonColorWhite,
          )
        ],
      )
    );
  }
}