import 'package:conex_flutter_mvvm/views/auth/page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => AuthPage()),
  ],
);
