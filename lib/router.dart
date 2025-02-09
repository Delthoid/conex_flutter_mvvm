import 'package:conex_flutter_mvvm/views/auth/page.dart';
import 'package:conex_flutter_mvvm/views/home/page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => AuthPage()),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
  ],
);
