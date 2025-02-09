import 'package:conex_flutter_mvvm/services/client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  //Register User
  Future<AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    return await supabase.auth.signUp(
      email: email,
      password: password,
    );
  }

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    return await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }
}