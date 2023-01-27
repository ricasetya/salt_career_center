import 'package:go_router/go_router.dart';

import '../../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/conpass", routes: [
  // GoRoute(
  //     path: "/login",
  //     name: Routes.loginPage,
  //     builder: (context, state) => const LogIn()),
  // GoRoute(
  //     path: "/signup",
  //     name: Routes.signUpPage,
  //     builder: (context, state) => const SignUp()),
  // GoRoute(
  //     path: "/forpass",
  //     name: Routes.forpassPage,
  //     builder: (context, state) => const ForPass()),
  GoRoute(
      path: "/conpass",
      name: Routes.conpassPage,
      builder: (context, state) => const FpEmailSent()),
  GoRoute(
      path: "/updatepass",
      name: Routes.updatepassPage,
      builder: (context, state) => const UpdatePass()),
  // GoRoute(
  //     path: "/forpassuc",
  //     name: Routes.forpassucPage,
  //     builder: (context, state) => const ForPassSuc()),
  // GoRoute(
  //     path: "/home",
  //     name: Routes.homePage,
  //     builder: (context, state) => const Home()),
]);
