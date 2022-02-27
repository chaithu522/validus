import 'package:flutter/material.dart';

class TextStyleHelper
{

  static TextStyle textStyle({String fontFamily="Poppins-Regular.ttf",FontWeight fontWeight = FontWeight.normal,double fontSize = 17.0,Color hintStyle = Colors.white})
  {
    return TextStyle(
      fontFamily:fontFamily,
      fontWeight:fontWeight,
      fontSize:fontSize,
      color:hintStyle
    );
  }


}