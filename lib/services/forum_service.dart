import "package:recogram/services/client.dart";

// User Service model / endpoint
class Forum {
  // creates client instance to connect to user service
  var client = Client("https://sc-22-user-service.herokuapp.com/");

  // endpoints definitions
  String loginUrl = "/login/";
  String registerUrl = "/register/";
  String profileUrl = "/profile/";
  String logoutUrl = "/logout/";

  // request headers, get `Authorizarion` token if available
  var headers = {
    "Content-Type": "application/json",
    "Authorization": "Token some-random-token"
  };

  // GET /login
  // sends user data to login endpoint
  login(Map<String, String> userCredentials) {
    var response = client.post(loginUrl, userCredentials, headers);

    return response.toString();
  }

  // POST /register
  // sends user data to register endpoint
  register(Map<String, String> userData) {
    var response = client.post(registerUrl, userData, headers);

    return response.toString();
  }
}
