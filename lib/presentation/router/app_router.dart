import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/screens/shared/help_screen.dart';
import 'package:magdsoft_task/presentation/screens/user/login_screen.dart';
import 'package:magdsoft_task/presentation/screens/user/verify_screen.dart';
import '../screens/shared/splash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/verify':
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(builder: (context) => VerifyScreen(fullname: args['fullname'],phonenumber: args['phonenumber'],otpCode: args['code'],));
      case '/help':
        return MaterialPageRoute(builder: (_) => const HelpScreen());  
      default:
        return null;
    }
  }
}