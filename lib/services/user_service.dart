import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constant/api_routes.dart';
import '../models/user.dart';

class UserServices {
  static Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  static Future<dynamic> createUserService(
      {required String accessToken, required User userData}) async {
    var response = await http.post(
      Uri.parse(ApiRoutes.createUserApi),
      headers: {...headers, 'Authorization': 'Bearer $accessToken'},
      body: jsonEncode(userData),
    );
    if (response.statusCode.toString().contains('2')) {
      return jsonDecode(response.body);
    } else {
      return "Error400";
      // String error = jsonDecode(response.body)['message'];
      // throw (error);
    }
  }
}
