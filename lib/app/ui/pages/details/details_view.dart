import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_app/app/controllers/home_controller.dart';

class DetailsPage extends StatelessWidget {
  final int _index = Get.arguments['index'];
  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find<HomeController>();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image.network(
                _homeController.apiResult.value.results[_index].image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
