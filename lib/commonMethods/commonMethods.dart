import 'package:intl/intl.dart';
class CommonMethod
{

  static double holdingPeriodReturn(double endingValue,double beginningValue,double income)
  {
    //HPR
    var hrp = ((endingValue - beginningValue) + income);

    hrp = hrp/beginningValue;


    return hrp.floorToDouble();
  }

  static String noDataText(String text)
  {
    if(text.isEmpty == true)
      {

        return 'Not Saved';
      }
      else
        {

          return text;
        }
  }

  static String readTimestamp(int timestamp) {

   // var millis = 978296400000;
    var dt = DateTime.fromMillisecondsSinceEpoch(timestamp);

// 12 Hour format:
    var d12 = DateFormat('h:mm a').format(dt);

    return d12;
  }

}