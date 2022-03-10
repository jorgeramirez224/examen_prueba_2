import 'package:get/get.dart';

class ControllerZoomImage extends GetxController {
double sizeImg = 125.0;
double opa = 1.0;

  void increaseZoomImage () {
    sizeImg = sizeImg+10;
    update();
  }

  void decreaseZoomImage () {
    sizeImg = sizeImg-10;
    update();
  }

  void resetZoomImage () {
    sizeImg = 125.0;
    update();
  }

  void opacityImage () {
      opa -= 0.2;
    update();
  }
}