import 'package:conex_flutter_mvvm/models/user.dart';
import 'package:conex_flutter_mvvm/services/user_service.dart';

class UserRepository {
  final UserService _userService = UserService();

  UserRepository();

  Future<User> registerUser({
    required User user,
  }) async {
    try {
      return await _userService.registerUser(user: user);
    } catch (e) {
      rethrow;
    }
  }
}