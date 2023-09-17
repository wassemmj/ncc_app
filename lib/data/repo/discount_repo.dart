import 'dart:convert';

import 'package:ncc_app/data/api/discount_api.dart';

class DiscountRepo {
  static Future makeDiscountProduct(int productId,int percentageOff) async {
    try {
      var response = await DiscountApi.makeDiscountProduct(productId, percentageOff);
      return jsonDecode(response);
    } catch (e) {
      throw Exception('Repo Error');
    }
  }
}