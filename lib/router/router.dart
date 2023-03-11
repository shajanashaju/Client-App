import 'package:auto_route/auto_route.dart';
import 'package:clientapp/screens/botton_navigation.dart';
import 'package:clientapp/screens/login_screen.dart';
import 'package:clientapp/screens/onboardscreen.dart';
import 'package:clientapp/screens/signup_screen.dart';

@MaterialAutoRouter(routes: [
  // AutoRoute(path: '/', name: 'OnBoardScreenRoute', page: OnboardScreen),
  AutoRoute(path: '/', name: 'LoginScreenRoute', page: LoginScreen),
  AutoRoute(
      path: 'signupscreen', name: 'SignUpScreenRoute', page: SignUpScreen),
  AutoRoute(
      path: 'onboardscreen', name: 'OnBoardScreenRoute', page: OnBoardScreen),
  AutoRoute(
      path: 'bottomnavigation',
      name: 'BottomNavigationRoute',
      page: Bottomnavigation),
])
class $AppRouter {}
