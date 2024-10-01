import '../models/user.dart';

class UserController {
  bool validateuser(String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  User createUser(String username, String password) {
    return User(username: username, password: password);
  }
}