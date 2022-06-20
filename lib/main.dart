import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/presentation/downloads/mainpage/widgets/main_page.dart';
import 'package:netflix/presentation/downloads/screen_download.dart';
import 'package:netflix/presentation/search/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
     // title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        scaffoldBackgroundColor:kBackgroundColor,
        primarySwatch: Colors.blue,
        backgroundColor: kBackgroundColor,
        textTheme: TextTheme(bodyText1: TextStyle(
          color: Colors.white,
          
        ),
        bodyText2: TextStyle(
          color: Colors.white,
          
        ), )
      ),
      home: Search()
    );
  }
}

