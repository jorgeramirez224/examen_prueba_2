import 'package:flutter/material.dart';
import 'package:prueba_2/controllers/controller_zoom_image.dart';
import 'package:prueba_2/pages/zoom_image.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => ControllerZoomImage());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen de Prueba 2',
      initialRoute: '/zoom_image',
      routes: {
        '/zoom_image': (context) =>  ZoomImage()
      },
    );
  }
}
