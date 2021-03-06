import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_2/controllers/controller_zoom_image.dart';

class ZoomImage extends StatelessWidget {
  ZoomImage({Key? key}) : super(key: key);
  final controllerZoomImage = Get.find<ControllerZoomImage>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Imagen Zoom actividad'),
      ),
      body: Center(
        child: GetBuilder<ControllerZoomImage>(
          builder: (controllerZoomImage) => Container(
            child: CircleAvatar(
              radius: controllerZoomImage.sizeImg,
              backgroundColor:
                  Colors.yellow.withOpacity(controllerZoomImage.opa),
              backgroundImage: const NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/0/0a/DK_logo_-_red_border.png'),
            ),
          ),
        ),
      ),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                controllerZoomImage.increaseZoomImage();
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.blue,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                controllerZoomImage.decreaseZoomImage();
              },
              child: const Icon(Icons.remove),
              backgroundColor: Colors.red,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                controllerZoomImage.resetZoomImage();
              },
              child: const Icon(Icons.restore),
              backgroundColor: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                controllerZoomImage.opacityImage();
              },
              child: const Icon(Icons.opacity),
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
