import 'package:auto_route/auto_route_annotations.dart';

import '../features/auth/presentation/sign_in/screens/sign_in_screen.dart';
import '../features/auth/presentation/sign_up/screens/sign_up_screen.dart';
import '../features/auth/presentation/splash/splash_screen.dart';
import '../features/parking/presentation/home/home_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: SignInScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: HomeScreen),
  ],
)
class $Router {}
