import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/presentation/downloads/widgets/bottom_nav.dart';
import 'package:netflix/widgets/app_bar_widget.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(50),
      child:AppBarWidget(title: "Search"),),
      bottomNavigationBar: BottomNaviagtionWidget());
  }
}