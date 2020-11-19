import 'package:get/get.dart';
import 'package:rick_and_morty_app/app/controllers/home_controller.dart';
import 'package:rick_and_morty_app/app/data/providers/api_client.dart';
import 'package:rick_and_morty_app/app/data/repository/api_repository.dart';
import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    http.Client client = http.Client();
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: ApiRepository(
          apiClient: ApiClient(httpClient: client),
        ),
      ),
    );
  }
}
