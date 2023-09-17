import 'package:http/http.dart' as http;

import '../../core/api.dart';
import '../../core/token.dart';

class DiscountApi {
  static Future makeDiscountProduct(int productId,int percentageOff) async {
    try {
      var response = await http.post(
        Uri.parse('${Api.api}/category/Section/product/$productId/makeDiscount'),
        headers: {
          'Accept': 'application/json',
          'Connection': "Keep-Alive",
          'Authorization': 'Bearer ${Token.token}'
        },
        body: {
          'percentage_off' : '$percentageOff'
        }
      );
      print(response.body);
      if(response.statusCode == 200) {
        if(response.body.isEmpty) {
          throw Exception('Response is Empty');
        }
        return response.body;
      } else {
        throw Exception('Exception Occurred');
      }
    } catch (e) {
      rethrow;
    }
  }
}