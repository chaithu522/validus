
import 'package:get/get.dart';

class HomeController extends GetxController
{

  var currentIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void updateCurrentIndex(int currentIndex)
  {
    this.currentIndex.value = currentIndex;

    update();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }



}