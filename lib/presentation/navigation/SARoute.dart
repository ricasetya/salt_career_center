import 'package:go_router/go_router.dart';
import '../../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/login", routes: [
  GoRoute(
      path: "/login",
      name: Routes.loginPage,
      builder: (context, state) => const LoginPage()),
  GoRoute(
      path: "/register",
      name: Routes.registerPage,
      builder: (context, state) => const Register()),
  GoRoute(
      path: "/password",
      name: Routes.passwordPage,
      builder: (context, state) => const PasswordPage()),
  GoRoute(
      path: "/forpass",
      name: Routes.forgotpasswordPage,
      builder: (context, state) => const ForgotPassword()),
  GoRoute(
      path: "/conpass",
      name: Routes.conpassPage,
      builder: (context, state) => const FpEmailSent()),
  GoRoute(
      path: "/updatepass",
      name: Routes.updatepassPage,
      builder: (context, state) => const UpdatePass()),
  GoRoute(
      path: "/sudahmelamar",
      name: Routes.sudahmelamarPage,
      builder: (context, state) => const SudahMelamar()),
  GoRoute(
      path: "/dafpekpage",
      name: Routes.dafpegpagePage,
      builder: (context, state) => const DaftarPekerjaanPage()),
  GoRoute(
      path: "/beranda",
      name: Routes.berandaPage,
      builder: (context, state) => const BerandaPage()),
  GoRoute(
      path: "/backend",
      name: Routes.backendPage,
      builder: (context, state) => const BackendTest()),
  GoRoute(
      path: "/tentang",
      name: Routes.tentangPage,
      builder: (context, state) => const TentangScreen()),
  GoRoute(
      path: "/post",
      name: Routes.postscreenPage,
      builder: (context, state) => const PostScreen()),
  GoRoute(
      path: "/detailpage",
      name: Routes.detailPage,
      builder: (context, state) => const Detail()),
]);
