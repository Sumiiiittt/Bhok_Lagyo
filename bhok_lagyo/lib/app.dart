import 'package:flutter/material.dart';
import 'views/splash_view.dart';
import 'views/onboarding_view.dart';
import 'views/login_view.dart';
import 'views/signup_view.dart';
import 'views/dashboard_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String dashboard = '/dashboard';
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bhok Lagyo',
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.splash:
            return MaterialPageRoute(builder: (_) => const SplashView());
          case AppRoutes.onboarding:
            return MaterialPageRoute(builder: (_) => const OnboardingView());
          case AppRoutes.login:
            return MaterialPageRoute(builder: (_) => const LoginView());
          case AppRoutes.signup:
            return MaterialPageRoute(builder: (_) => const SignUpView());
          case AppRoutes.dashboard:
            return MaterialPageRoute(builder: (_) => const DashboardScreen());
          default:
            return MaterialPageRoute(
              builder: (_) => const Scaffold(
                body: Center(child: Text('404 - Page Not Found')),
              ),
            );
        }
      },
    );
  }
}
