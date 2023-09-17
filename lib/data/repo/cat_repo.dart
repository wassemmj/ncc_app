import 'dart:convert';

import 'package:ncc_app/data/api/cat_api.dart';

class CatRepo {
  static Future catRepo() async {
    try {
      var response = await CatApi.catApi();
      return jsonDecode(response);
    } catch (e) {
      throw Exception('Repo Error');
    }
  }

  static Future secRepo(int catId) async {
    try {
      var response = await CatApi.secApi(catId);
      return jsonDecode(response);
    } catch (e) {
      throw Exception('Repo Error');
    }
  }

  static Future sectorRepo(int secId,String sort) async {
    try {
      var response = await CatApi.sectorApi(secId, sort);
      return jsonDecode(response);
    } catch (e) {
      throw Exception('Repo Error');
    }
  }

  static Future productRepo(int sectorId,String sort) async {
    try {
      var response = await CatApi.productApi(sectorId, sort);
      print(jsonDecode(response));
      return jsonDecode(response);
    } catch (e) {
      throw Exception('Repo Error');
    }
  }

  static Future api(String api) async {
    try {
      var response = await CatApi.api(api);
      print(jsonDecode(response));
      return jsonDecode(response);
    } catch (e) {
      throw Exception('Repo Error');
    }
  }
}