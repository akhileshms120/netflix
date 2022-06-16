import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';
import 'package:netflix/presentation/downloads/widgets/bottom_nav.dart';
import 'package:netflix/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  final List imageList = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/xf9wuDcqlUPWABZNeDKPbZUjWx0.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/74xTEgt7R36Fpooo50r9T25onhq.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qITMuqeEHV7Tp0PVpZU9r0P9Rvs.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: size,
            child: AppBarWidget(
              title: 'Downloads',
              
            )),
            bottomNavigationBar:BottomNaviagtionWidget() ,
        body: ListView(
          children: [
            _smartDownloads(),
            SizedBox(height: 10),
            Text(
              "Introducing Download For you",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kWhite, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              
                "We will download a personalised selection of\n movies and shows for you so there \nis always something to watch on your \ndevice",
                textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 16),),
            Container(
              width: size.width,
              height: size.height,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                      child: CircleAvatar(
                    radius: size.width * .37,
                  )),
                  DownloadsImageWidget(
                    size: Size(size.width * 0.6, size.height * 0.4),
                    imageList: imageList,
                    angle: -20,
                    Image: NetworkImage(imageList[0]),
                    margin: EdgeInsets.only(right: 150),
                  ),
                  DownloadsImageWidget(
                    size: Size(size.width * 0.6, size.height * 0.4),
                    imageList: imageList,
                    Image: NetworkImage(imageList[1]),
                    margin: EdgeInsets.only(left: 150),
                    angle: 20,
                  ),
                  DownloadsImageWidget(
                    size: Size(size.width * 0.6, size.height * 0.4),
                    imageList: imageList,
                    Image: NetworkImage(imageList[2]),
                    margin: EdgeInsets.only(left: 0),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Set up",
                style: TextStyle(
                    fontSize: 20, color: kWhite, fontWeight: FontWeight.bold),
              ),
              color: kButtonColor,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "See what you can Download",
                style: TextStyle(
                    fontSize: 20, color: kBlack, fontWeight: FontWeight.bold),
              ),
              color: kButtonColorWhite,
            )
          ],
        ));
  }
}

class _smartDownloads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhite,
        ),
        kWidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget(
      {Key? key,
      required this.size,
      required this.imageList,
      this.angle = 0,
      required this.Image,
      required this.margin});

  final Size size;
  final List imageList;
  final double angle;
  ImageProvider Image;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
            margin: margin,
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: Image),
            )));
  }
}
