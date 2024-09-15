import 'package:go_router/go_router.dart';
import 'package:shipping_tracker/features/auth/presentation/pages/login_screen.dart';
import '../features/splash_screen.dart';
import 'helpers/navigation_service.dart';

class AppRoutes {
  static GoRouter router = GoRouter(
    initialLocation: '/login',
    navigatorKey: NavigationService.navigatorKey,
    routes: [
      GoRoute(
        name: SplashScreen.routeName,
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: LoginScreen.routeName,
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
