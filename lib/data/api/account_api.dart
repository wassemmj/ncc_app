import 'package:http/http.dart' as http;
import 'package:ncc_app/core/api.dart';
import 'package:ncc_app/core/token.dart';

class AccountApi {
  static Future getAccount() async {
    try {
      var response = await http.get(
        Uri.parse('${Api.api}/getuserInfo'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Token.token}'
        }
      );
      if(response.statusCode == 200) {
        if(response.body.isEmpty) {
          throw Exception('Exception is Empty');
        }
        return response.body;
      } else {
        throw Exception('an Error Occured');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future updateAccount(String name,String email, String address) async {
    try {
      var response = await http.post(
        Uri.parse('${Api.api}/updateUserInfo'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Token.token}'
        },
        body: {
          'email' : email,
          'name' : name,
          'address' : address,
        }
      );
      if(response.statusCode == 200) {
        if(response.body.isEmpty) {
          throw Exception('Exception is Empty');
        }
        return response.body;
      } else {
        throw Exception('an Error Occured');
      }
    } catch (e) {
      rethrow;
    }
  }
}