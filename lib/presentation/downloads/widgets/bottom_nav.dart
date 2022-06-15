import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';


ValueNotifier<int> indexChangeNotifier =ValueNotifier(0);

class BottomNaviagtionWidget extends StatelessWidget {
 
 
 

  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder:(context,int newIndex,child){
      return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      //fixedColor: Colors.black,
      backgroundColor: Colors.black,
      currentIndex:newIndex,
      onTap: (index){
        indexChangeNotifier.value=index;
      },
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      items:[
      
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"
      ),
      BottomNavigationBarItem(icon: Icon(Icons.face),label: "New and hot"),
       BottomNavigationBarItem(icon: Icon(Icons.collections),label: "FastLaugh"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
         BottomNavigationBarItem(icon: Icon(Icons.file_download),label: "Downloads"
      ),
      


    ]);
    });
  }
}