import 'package:go_router/go_router.dart';
import '../../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/DafPek2", routes: [
  GoRoute(
      path: "/conpass",
      name: Routes.conpassPage,
      builder: (context, state) => const FpEmailSent()),
  GoRoute(
      path: "/updatepass",
      name: Routes.updatepassPage,
      builder: (context, state) => const UpdatePass()),
  GoRoute(
      path: "/dafpek2",
      name: Routes.dafpek2Page,
      builder: (context, state) => const DafPek2()),
  GoRoute(
      path: "/sudahmelamar",
      name: Routes.sudahmelamarPage,
      builder: (context, state) => const SudahMelamar()),
]);
