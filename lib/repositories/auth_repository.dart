import 'package:conex_flutter_mvvm/services/auth_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  final AuthService _authService = AuthService();

  AuthRepository();

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    try {
      return await _authService.signIn(email: email, password: password);
    } catch (error) {
      rethrow;
    }
  }

  Future<AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    try {
      return await _authService.signIn(email: email, password: password);
    } catch (e) {
      rethrow;
    }
  }
}