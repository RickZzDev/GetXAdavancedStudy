import 'package:meta/meta.dart';
import 'package:rick_and_morty_app/app/data/providers/api_client.dart';

class ApiRepository {
  final ApiClient apiClient;

  ApiRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() async {
    return await apiClient.getAll();
  }

  // getId(id) {
  //   return apiClient.getId(id);
  // }

  // delete(id) {
  //   return apiClient.delete(id);
  // }

  // edit(obj) {
  //   return apiClient.edit(obj);
  // }

  // add(obj) {
  //   return apiClient.add(obj);
  // }
}
