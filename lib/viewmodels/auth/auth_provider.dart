import 'package:conex_flutter_mvvm/viewmodels/auth/auth_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authViewModelStateNotifierProvider = StateNotifierProvider<AuthViewModelStateNotifier, AuthViewModel>(
  (ref) => AuthViewModelStateNotifier(AuthViewModel()),
);

class AuthViewModelStateNotifier extends StateNotifier<AuthViewModel> {
  AuthViewModelStateNotifier(super.state);

  void togglePassword(bool visibility) {
    state = state.copyWith(hidePassword: visibility);
  }
}