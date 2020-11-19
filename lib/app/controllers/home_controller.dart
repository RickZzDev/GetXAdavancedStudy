import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty_app/app/data/models/rick_and_morty_model.dart';
import 'package:rick_and_morty_app/app/data/repository/api_repository.dart';

class HomeController extends GetxController {
  final ApiRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);
  var apiResult = Rx<RickAndMortyModel>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchApi();
  }

  void fetchApi() async {
    apiResult.value = await repository.getAll();
  }
}
