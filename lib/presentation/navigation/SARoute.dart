import 'package:go_router/go_router.dart';
import 'package:telkom_career/pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/conpass", routes: [
  GoRoute(
      path: "/conpass",
      name: Routes.conpassPage,
      builder: (context, state) => const FpEmailSent()),
  GoRoute(
      path: "/updatepass",
      name: Routes.updatepassPage,
      builder: (context, state) => const UpdatePass()),
]);
