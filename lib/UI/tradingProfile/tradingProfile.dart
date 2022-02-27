

import 'package:flutter/material.dart';
import 'package:validus/UI/editProfile/editProfile.dart';
import 'package:validus/colorHelper/colorHelperClass.dart';
import 'package:validus/commonMethods/commonMethods.dart';
import 'package:validus/constants/constants.dart';
import 'package:get/get.dart';
import 'package:validus/fontsHelper/fontHelper.dart';
import '../editProfile/editProfileController.dart';

class TradingProfile extends StatefulWidget {
  const TradingProfile({Key? key}) : super(key: key);

  @override
  TradingProfileState createState() => TradingProfileState();
}

class TradingProfileState extends State<TradingProfile>
{

  final EditProfileController editProfileController = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context)
  {
    return Container(
        color: ColorHelperClass.tabBGColor,
        child:SafeArea(child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:16,bottom:24),
              child: Text(Constants.profile,style: TextStyle(color:Colors.white,fontSize:36,fontFamily:FontManager.airbnbCerealBold)),
            ),
            Padding(
                padding: const EdgeInsets.only(left:4),
                child:  Obx(() {
                  return SizedBox(height:300,child:
                  Container(
                    padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
                    color: ColorHelperClass.cardColor,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(flex: 1, child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(Constants.name, style: TextStyle(
                                          color: Colors.white, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight)),
                                      Container(decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 1.0, color: Colors.white),
                                        ),
                                      ), child:
                                      InkWell(onTap: () {

                                        editProfileController.updateType(Constants.name);

                                        Get.bottomSheet(EditProfile(type: Constants.name),
                                            isScrollControlled: true);
                                      },
                                          child: Text(Constants.edit, style: TextStyle(
                                              color: Colors.white, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight)))
                                      )
                                    ]),
                                const SizedBox(height: 15),
                                Text(CommonMethod.noDataText(editProfileController.name.value), style: TextStyle(
                                    color: ColorHelperClass.subTitleColor, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight))
                              ])),
                          const SizedBox(height: 24),
                          Expanded(flex: 1, child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(Constants.email, style:  TextStyle(
                                          color: Colors.white, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight)),
                                      Container(decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 1.0, color: Colors.white),
                                        ),
                                      ), child:
                                      InkWell(onTap: () {

                                        editProfileController.updateType(Constants.email);
                                        Get.bottomSheet(EditProfile(type: Constants.email),
                                            isScrollControlled: true);
                                      },
                                          child: Text(Constants.edit, style: TextStyle(
                                              color: Colors.white, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight))))
                                    ]),
                                const SizedBox(height: 15),
                                Text(CommonMethod.noDataText(editProfileController.email.value) , style: TextStyle(
                                    color: ColorHelperClass.subTitleColor, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight))
                              ])),
                          const SizedBox(height: 24),
                          Expanded(flex: 1, child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(Constants.address, style:  TextStyle(
                                          color: Colors.white, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight)),
                                      Container(decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 1.0, color: Colors.white),
                                        ),
                                      ), child:
                                      InkWell(onTap: ()
                                      {
                                        editProfileController.updateType(Constants.address);

                                        Get.bottomSheet(EditProfile(type: Constants.address),
                                            isScrollControlled: true);
                                      },
                                          child: Text(Constants.edit, style:  TextStyle(
                                              color: Colors.white, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight))))
                                    ]),
                                const SizedBox(height: 15),
                                Text(CommonMethod.noDataText(editProfileController.address.value), style: TextStyle(
                                    color: ColorHelperClass.subTitleColor, fontSize: 16,fontFamily:FontManager.testFoundersGroTeskLight))
                              ])),
                        ]),
                  ),

                  );
                }))],
        ),
        ));



  }
}
