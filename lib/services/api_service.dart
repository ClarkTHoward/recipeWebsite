import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter_recipe_web_app/constants.dart';
import 'package:flutter_recipe_web_app/model/user_model.dart';

class ApiService {
  Future<MockTest?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        MockTest _model = mockTestFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
      throw new Exception("bad things happend");
    }
  }
}
