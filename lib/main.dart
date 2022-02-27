import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validus/colorHelper/colorHelperClass.dart';
import 'UI/home/home.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor:ColorHelperClass.backgroundColor,
        buttonTheme:ButtonThemeData(
          buttonColor: ColorHelperClass.buttonBGColor,
        ),

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
