import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../shared/model/api_model.dart';

class ApiService {
  Future<ApiModel> getRequest(
      {required Uri url, Map<String, String>? headers}) async {
    ApiModel finalResponse;
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body);
      finalResponse = ApiModel(
        statusCode: response.statusCode,
        body: decodeData,
      );
    } else {
      finalResponse = ApiModel(
        statusCode: response.statusCode,
        body: response.body,
      );
    }
    return finalResponse;
  }

  Future<ApiModel?> postRequest(
      {required Uri url,
      required Map<String, dynamic> body,
      Map<String, String>? headers}) async {
    ApiModel? finalResponse;
    try {
      final response =
          await http.post(url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 201) {
        print(response);
        final decodeData = response.body;
        finalResponse = ApiModel(
          statusCode: response.statusCode,
          body: decodeData,
        );
      } else {
        finalResponse = ApiModel(
          statusCode: response.statusCode,
          body: response.body,
        );
      }
    } catch (e) {
      print(e);
      rethrow;
    }
    return finalResponse;
  }
}
