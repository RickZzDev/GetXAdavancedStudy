import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_app/app/controllers/home_controller.dart';
import 'package:rick_and_morty_app/app/ui/pages/home/components/card.dart';

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
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.blueGrey[800],
                  padding: EdgeInsets.only(top: 8),
                  child: ListView.builder(
                    itemCount: _homeController.apiResult.value.results.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Center(
                        child: CardCharacteer(index),
                      );
                    },
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
