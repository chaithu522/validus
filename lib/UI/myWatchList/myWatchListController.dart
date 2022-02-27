

import 'package:get/get.dart';

import '../../apis/apiService.dart';
import '../../modelclasses/watch.dart';

class MyWatchListController extends GetxController
{

  var isLoading = true.obs;
  var watch = Watch().obs;

  void getMyWatchList() async {
    try{
      isLoading(true);
      var cl = await ApiService.watchList();
      watch.value = cl;
      Future.delayed(const Duration(milliseconds: 20),(){update();});
    }
    finally
    {
      isLoading(false);
    }
  }

  @override
  void onInit() {

    getMyWatchList();
    // TODO: implement onInit
    super.onInit();
  }



}