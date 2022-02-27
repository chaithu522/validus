
import 'package:flutter/material.dart';

import '../../colorHelper/colorHelperClass.dart';
import '../../fontsHelper/fontHelper.dart';




class TitleHelper
{

  static Widget titleWidget({required String title,required Widget titleWidget})
  {
    return Container(
      color: ColorHelperClass.tabBGColor,
      child:SafeArea(child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:16,bottom:24),
            child: Text(title,style: TextStyle(color:Colors.white,fontSize:36,fontFamily:FontManager.airbnbCerealBold)),
          ),
         Expanded(child:Padding(
             padding: const EdgeInsets.only(left:4),
             child:titleWidget)) ,
        ],
      ),
    ));
  }


}