import 'package:aurora_app/userFlow/CentralPage.dart';
import 'package:flutter/material.dart';
import 'StatsBoard.dart';
import './MainMessagePage.dart';


class HomeScreen extends StatelessWidget {
  var locStore;

  HomeScreen({this.locStore});

  @override
  Widget build(BuildContext context) {

    PageController _homePageController = PageController(
      initialPage: 0,
      keepPage: false,
    );

    return PageView(
      controller: _homePageController,
      scrollDirection: Axis.horizontal,
      pageSnapping: true,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        CentralPage(locStore: locStore,),
        MainMessagePage(homePageController: _homePageController),

        //Single Pages
       
      ],
    );
  }
}