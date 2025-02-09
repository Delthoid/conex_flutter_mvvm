import 'package:conex_flutter_mvvm/models/user.dart';
import 'package:conex_flutter_mvvm/repositories/auth_repository.dart';
import 'package:conex_flutter_mvvm/repositories/user_repository.dart';
import 'package:conex_flutter_mvvm/services/client.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supa;

class AuthViewModel {
  final AuthRepository _authRepository = AuthRepository();
  final UserRepository _userRepository = UserRepository();

  bool hidePassword = false;

  Future<supa.AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    final result = await _authRepository.signUp(email: email, password: password);

    return result;
  }

  ///Inser the new user into users table
  Future<User> registerUser({
    required String userName,
    required String firstName,
    required String avatarUrl,
    String? lastName,
  }) async {
    return await _userRepository.registerUser(
      user: User(
        userId: supabase.auth.currentUser?.id ?? '',
        userName: userName,
        firstName: firstName,
        avatarUrl: avatarUrl,
      ),
    );
  }

  AuthViewModel copyWith({
    required bool hidePassword
  }) => AuthViewModel()..hidePassword = hidePassword;
}