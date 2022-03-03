import 'package:get/get.dart';

class ControllerZoomImage extends GetxController {
double sizeImg = 125.0;

  void increaseZoomImage () {
    sizeImg = sizeImg+10;
    update();
  }

  void decreaseZoomImage () {
    sizeImg = sizeImg-10;
    update();
  } 
}