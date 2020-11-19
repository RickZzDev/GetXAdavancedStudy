import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:rick_and_morty_app/app/data/models/rick_and_morty_model.dart';

const baseUrl = 'https://rickandmortyapi.com/api/character';

class ApiClient {
  final http.Client httpClient;
  ApiClient({@required this.httpClient});

  Future<RickAndMortyModel> getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        RickAndMortyModel listMyModel =
            RickAndMortyModel.fromJson(jsonResponse);

        return listMyModel;
      } else
        return null;
    } catch (_) {
      return null;
    }
  }

  // getId(id) async {
  //   try {
  //     var response = await httpClient.get(baseUrl);
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> jsonResponse = json.decode(response.body);
  //       // TODO: implement methods!
  //     } else
  //       print('erro -get');
  //   } catch (_) {}
  // }

  // add(obj) async {
  //   try {
  //     var response = await httpClient.post(baseUrl,
  //         headers: {'Content-Type': 'application/json'}, body: jsonEncode(obj));
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else
  //       print('erro -post');
  //   } catch (_) {}
  // }

  // edit(obj) async {
  //   try {
  //     var response = await httpClient.put(baseUrl,
  //         headers: {'Content-Type': 'application/json'}, body: jsonEncode(obj));
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else
  //       print('erro -post');
  //   } catch (_) {}
  // }

  // delete(obj) async {
  //   try {
  //     var response = await httpClient.delete(baseUrl);
  //     if (response.statusCode == 200) {
  //       // TODO: implement methods!
  //     } else
  //       print('erro -post');
  //   } catch (_) {}
  // }
}
