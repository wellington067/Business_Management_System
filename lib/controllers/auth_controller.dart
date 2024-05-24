import 'package:business_management_system/models/user_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isAuthenticated = false.obs;
  var user = UserModel(id: '', email: '', password: '', role: '').obs;

  void login(String email, String password) {
    // Implementar lógica de login
  }

  void logout() {
    isAuthenticated.value = false;
    user.value = UserModel(id: '', email: '', password: '', role: '');
  }
}
