import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../screens/auth/login_type_screen.dart';
import '../screens/auth/phone_login_screen.dart';
import '../screens/auth/admin_login_screen.dart';
import '../screens/passenger/home_screen.dart';
import '../screens/driver/home_screen.dart' as driver;
import '../screens/admin/dashboard_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login-type',
    routes: [
      // Auth Routes
      GoRoute(
        path: '/login-type',
        builder: (context, state) => const LoginTypeScreen(),
      ),
      GoRoute(
        path: '/phone-login',
        builder: (context, state) {
          final userType = state.extra as String?;
          return PhoneLoginScreen(userType: userType ?? 'passenger');
        },
      ),
      GoRoute(
        path: '/admin-login',
        builder: (context, state) => const AdminLoginScreen(),
      ),
      
      // Passenger Routes
      GoRoute(
        path: '/passenger-home',
        builder: (context, state) => const PassengerHomeScreen(),
      ),
      
      // Driver Routes
      GoRoute(
        path: '/driver-home',
        builder: (context, state) => const driver.DriverHomeScreen(),
      ),
      
      // Admin Routes
      GoRoute(
        path: '/admin-dashboard',
        builder: (context, state) => const AdminDashboardScreen(),
      ),
    ],
    errorBuilder: (context, state) {
      return Scaffold(
        body: Center(
          child: Text('Error: ${state.error}'),
        ),
      );
    },
  );
});
