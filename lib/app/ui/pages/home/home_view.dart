import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_app/app/controllers/home_controller.dart';

class MyHomePage extends StatelessWidget {
  final HomeController _homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
              if (_homeController.apiResult.value == null) {
                return Text("Nullo");
              } else {
                return Text(
                  _homeController.apiResult.value.results[0].name,
                  style: TextStyle(
                      fontFamily: "RmFont", color: Colors.black, fontSize: 32),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
