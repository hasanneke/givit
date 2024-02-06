import 'package:givit/features/home/view/home_page.dart';
import 'package:givit/features/login/view/login_view.dart';
import 'package:givit/features/profile/view/profile_view.dart';
import 'package:givit/features/register/view/register_view.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => RegisterPage(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => ProfileView(),
  ),
]);
