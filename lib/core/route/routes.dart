import 'package:go_router/go_router.dart';
import 'package:nummy/feature/auth/presentation/screens/sign_in_screen.dart';
import 'package:nummy/feature/auth/presentation/screens/sign_up_screen.dart';

final routes = GoRouter(
  initialLocation: "/sign_in",
  routes: [
    GoRoute(
      name: "sign_in",
      path: "/sign_in",
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      name: "sign_up",
      path: "/sign_up",
      builder: (context, state) => SignUpScreen(),
    ),
  ],
);
