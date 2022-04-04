import 'package:recogram/shared/model/user_model.dart';

import '../shared/global/global_var.dart';
import 'service_injector/service_injector.dart';

class AuthService {
  Future<bool> registerUser(
      {required String username, required String password}) async {
    bool hasRegistered = false;
    try {
      await si.apiService.postRequest(
        url: Uri.parse('$userBaseUrl/register/'),
        body: {'username': username, 'password': password},
        headers: {'content-type': 'application/json'},
      ).then((value) {
        if (value!.statusCode != 201) {
          hasRegistered = true;
        } else {
          hasRegistered = false;
        }
      });
    } catch (e) {
      hasRegistered = false;
    }
    return hasRegistered;
  }

  Future<dynamic> loginUser(
      {required String username, required String password}) async {
    dynamic user;
    try {
      await si.apiService.postRequest(
        url: Uri.parse('$userBaseUrl/login/'),
        body: {'username': username, 'password': password},
        headers: {'content-type': 'application/json'},
      ).then((value) {
        if (value!.statusCode == 200) {
          user = UserModel.fromRawJson(value.body);
        } else {
          user = value.body;
        }
      });
    } catch (e) {
      user = UserModel(
        id: '',
        token: '',
        lastLogin: DateTime.now(),
        isSuperuser: false,
        firstName: '',
        lastName: '',
        isStaff: false,
        isActive: false,
        dateJoined: DateTime.now(),
        created: DateTime.now(),
        updated: DateTime.now(),
        username: '',
        email: '',
        type: '',
      );
      rethrow;
    }
    return user;
  }
}
