import 'package:recogram/services/service_exports.dart';

class ServiceInjector {
  RouterService routerService = RouterService();
  ApiService apiService = ApiService();
  AuthService authService = AuthService();
  UserService userService = UserService();
  DialogService dialogService = DialogService();
}

ServiceInjector si = ServiceInjector();
