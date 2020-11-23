import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_app/app/controllers/home_controller.dart';
import 'package:rick_and_morty_app/app/routes/app_routes.dart';
import 'package:rick_and_morty_app/app/ui/pages/home/components/status_circle.dart';

class CardCharacteer extends StatelessWidget {
  final int _index;
  final HomeController _homeController = Get.find<HomeController>();
  CardCharacteer(this._index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAILS, arguments: {"index": _index}),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.50,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      _homeController.apiResult.value.results[_index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  _homeController.apiResult.value.results[_index].name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Row(
                  children: [
                    StatusCircle(
                        _homeController.apiResult.value.results[_index].status),
                    Text(
                      " " +
                          _homeController
                              .apiResult.value.results[_index].status +
                          " - ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      _homeController.apiResult.value.results[_index].species,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Lives in:",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  _homeController.apiResult.value.results[_index].location.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Gender:",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  _homeController.apiResult.value.results[_index].gender,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
