import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/presentation/downloads/screen_download.dart';
import 'package:netflix/presentation/downloads/widgets/bottom_nav.dart';
import 'package:netflix/presentation/fastandLaugh/fast_laugh.dart';
import 'package:netflix/presentation/home/home.dart';
import 'package:netflix/presentation/new&hot/new_and_hot.dart';
import 'package:netflix/presentation/search/search.dart';
import 'package:netflix/widgets/app_bar_widget.dart';

class ScreeenMainPage extends StatelessWidget {
 final  _pages=[
  HomePage(),
  NewandHot(),
  FastandLaugh(),
  Search(),
  ScreenDownload()

 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(50),
        child:AppBarWidget()),
      body:SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier,builder: (context,int index ,child){
          return _pages[index];
        },),
      ),
      bottomNavigationBar:BottomNaviagtionWidget() ,
    );
  }
}