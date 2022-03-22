import 'package:http/http.dart' as http;

class Client {
  String baseUrl;

  Client(this.baseUrl);

  // HTTP Client
  final client = http.Client();

  // make url, append path to `baseUrl`
  Uri makeURL(String url) {
    return Uri.https(baseUrl, url);
  }

  // GET
  get(String url, Map<String, String> headers) async {
    return await client.get(makeURL(url), headers: headers);
  }

  // POST
  post(
    String url,
    Map<String, String> body,
    Map<String, String>? headers,
  ) async {
    return await client.post(makeURL(url), body: body, headers: headers);
  }

  // PUT
  put(
    String url,
    Map<String, String> body,
    Map<String, String>? headers,
  ) async {
    return await client.put(makeURL(url), body: body, headers: headers);
  }

  // DELETE
  delete(String url, Map body, Map<String, String> headers) async {
    return await client.delete(makeURL(url), body: body, headers: headers);
  }
}
