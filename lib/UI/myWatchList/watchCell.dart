
import 'package:flutter/material.dart';
import 'package:validus/colorHelper/colorHelperClass.dart';
import 'package:validus/constants/constants.dart';

import '../../commonMethods/commonMethods.dart';
import '../../fontsHelper/fontHelper.dart';
import '../../modelclasses/watchData.dart';

class WatchCell extends StatefulWidget
{
  final WatchData watchData;

  const WatchCell({Key? key,required this.watchData}) : super(key: key);

  @override
  WatchCellState createState() => WatchCellState();
}


class WatchCellState extends State<WatchCell> {
  @override
  Widget build(BuildContext context) {
    return Container(padding:const EdgeInsets.all(16),child:Column(
      crossAxisAlignment:CrossAxisAlignment.start,
        children:[
      Text(widget.watchData.stockName ?? '',style:TextStyle(fontFamily:FontManager.testFoundersGroTeskMedium,fontSize:20,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,color:Colors.white)),
          const SizedBox(height:8),
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text(Constants.price,style: TextStyle(color:ColorHelperClass.cardSubColor,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight)),Text((widget.watchData.lastPrice ?? 0.0).toString(),style: TextStyle(color:Colors.white,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight))]),
      const SizedBox(height:8),
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text(Constants.dayGain,style: TextStyle(color:ColorHelperClass.cardSubColor,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight)),Text(/*(widget.watchData.price ?? 0.0).toString() + '-' + (widget.watchData.lastPrice ?? 0.0).toString() + '(' + */ (widget.watchData.dayGain ?? 0.0).toString() /*+ ')'*/,style: TextStyle(color:Colors.white,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight))]),
          const SizedBox(height:8),
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text(Constants.lastTrade,style:TextStyle(color:ColorHelperClass.cardSubColor,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight)),Text((CommonMethod.readTimestamp(int.parse(widget.watchData.lastTrade ?? '0'))),style: TextStyle(color:Colors.white,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight))]),
          const SizedBox(height:8),
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text(Constants.extendedHrs,style: TextStyle(color:ColorHelperClass.cardSubColor,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight)),Text((CommonMethod.readTimestamp(int.parse(widget.watchData.extendedHours ?? '0'))),style:TextStyle(color:Colors.white,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight))]),
          const SizedBox(height:8),
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text(Constants.change,style: TextStyle(color:ColorHelperClass.cardSubColor,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal,fontFamily:FontManager.testFoundersGroTeskLight)),
        Row(
         mainAxisAlignment:MainAxisAlignment.spaceBetween,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Image.asset(CommonMethod.holdingPeriodReturn(widget.watchData.lastPrice ?? 0.0,widget.watchData.price ?? 0.0,widget.watchData.dayGain ?? 0.0).isNegative == true ? ImagePathConstants.down:ImagePathConstants.up),
          const SizedBox(width:8),
          Text((CommonMethod.holdingPeriodReturn(widget.watchData.lastPrice ?? 0.0,widget.watchData.price ?? 0.0,widget.watchData.dayGain ?? 0.0)).toString() + '%',style: TextStyle(color:CommonMethod.holdingPeriodReturn(widget.watchData.lastPrice ?? 0.0,widget.watchData.price ?? 0.0,widget.watchData.dayGain ?? 0.0).isNegative == true ? ColorHelperClass.downColor:ColorHelperClass.upColor,fontSize:18,fontWeight:FontWeight.w400,fontStyle:FontStyle.normal)),
        ],
      )])
    ]),height:216,color:ColorHelperClass.cardColor);
  }
}
