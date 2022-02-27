
import 'package:flutter/material.dart';
import 'package:validus/UI/myWatchList/watchCell.dart';
import 'package:validus/colorHelper/colorHelperClass.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../commonWidgets/titleWidget.dart';
import 'myWatchListController.dart';

class MyWatchList extends StatefulWidget {
  const MyWatchList({Key? key}) : super(key: key);

  @override
  _MyWatchListState createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchList>
{
  final MyWatchListController myWatchListController = Get.put(MyWatchListController());

  @override
  Widget build(BuildContext context)
  {
    return TitleHelper.titleWidget(title:Constants.myWatchList, titleWidget: Obx(()
    {
      if(myWatchListController.isLoading.isTrue)
      {
        return const Center(child:CircularProgressIndicator());
      }
      else
      {

        return ListView.separated(
          itemCount:myWatchListController.watch.value.data?.length ?? 0,
          itemBuilder:(context,i)
          {
            return Padding(
              padding: i == myWatchListController.watch.value.data!.length - 1
                  ? const EdgeInsets.fromLTRB(8, 0, 8, 0)
                  : const EdgeInsets.only(left: 8),
              child: WatchCell(watchData:myWatchListController.watch.value.data![i]),
            );
          },separatorBuilder: (context, index) {
          return const Divider();
        },
        );
      }
    }));
  }
}
