import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../utils/errors/app_exception.dart';
import '../models/token.dart';

class TokenServices {
  static Future<Token> getToken() async {
    Uri url =
        Uri.parse('https://www.universal-tutorial.com/api/getaccesstoken');
    final response = await http.get(url,headers: {
      "Accept": "application/json",
      "api-token": "Q_b8AurpPvB7m_1Gn8Dg-SPUVQvMzk2NMZ3Vsiu69RF9BbfkuhoJDl0Ve_wJDn327G0",
      "user-email": "deivi320@hotmail.com"
    });
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Token.fromJson(result);
      print('token $result');
      return Token.fromJson(result);
    } else {
      throw AppException(description: 'defaultError');
    }
  }
}

