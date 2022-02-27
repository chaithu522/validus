
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validus/UI/myWatchList/myWatchList.dart';
import 'package:validus/colorHelper/colorHelperClass.dart';
import 'package:validus/constants/constants.dart';

import '../tradingProfile/tradingProfile.dart';
import 'homeController.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyHomePage>
{

  final HomeController homeController = Get.put(HomeController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(()
      {
        return homeController.currentIndex.value == 0 ? const MyWatchList():const TradingProfile();
      }),
      bottomNavigationBar:
      Obx(()
    {
      return BottomNavigationBar(
      backgroundColor:ColorHelperClass.tabBGColor,
      fixedColor:ColorHelperClass.buttonBGColor,
      unselectedItemColor:ColorHelperClass.unselectedColor,
      currentIndex:homeController.currentIndex.value,
      onTap:(currentIndex){

      homeController.updateCurrentIndex(currentIndex);
      },// this will be set when a new tab is tapped
      items:  [
      BottomNavigationBarItem(
      icon: Image.asset(ImagePathConstants.stackInActive),
      activeIcon:Image.asset(ImagePathConstants.stackActive),
      label:'Stocks',
      // title: Text(),
      ),
      BottomNavigationBarItem(
      icon: Image.asset(ImagePathConstants.homeInActive),
      activeIcon:Image.asset(ImagePathConstants.homeActive),
      label:'Profile',
      ),
      ],
    );
    },
    ));
  }
}
