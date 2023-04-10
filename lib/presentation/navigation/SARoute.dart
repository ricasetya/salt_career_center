import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/presentation/pages/article/article_screen.dart';
import 'package:telkom_career/presentation/pages/lists_jobs/cubit/lists_jobs_cubit.dart';
import '../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/loginmoc", routes: [
  // LOGIN //
  GoRoute(
      path: "/login",
      name: Routes.login,
      builder: (context, state) => const Login()),
  GoRoute(
      path: "/logins",
      name: Routes.loginsPage,
      builder: (context, state) => const LoginsPage()),
  GoRoute(
      path: "/loginmoc",
      name: Routes.loginmocPage,
      builder: (context, state) => const LoginPageMoc()),

  // REGISTER //
  GoRoute(
      path: "/register",
      name: Routes.registerPage,
      builder: (context, state) => const Register()),
  GoRoute(
      path: "/registers",
      name: Routes.registersPage,
      builder: (context, state) => const Registers()),

  // FORGET PASSWORD //
  GoRoute(
      path: "/forgotpassword",
      name: Routes.forgotpasswordsPage,
      builder: (context, state) => const ForgotPassword()),
  GoRoute(
      path: "/forgotpassworemailsent",
      name: Routes.forgotpassworemailsentdPage,
      builder: (context, state) => const ForgotPasswordEmailSent()),
  GoRoute(
      path: "/forgotpasswordupdatepassword",
      name: Routes.forgotpasswordupdatepasswordPage,
      builder: (context, state) => const ForgotPasswordUpdatePassword()),
  GoRoute(
      path: "/forgotpasswordupdatepasswordsucces",
      name: Routes.forgotpasswordupdatepasswordsuccesPage,
      builder: (context, state) => const ForgotPasswordUpdatePasswordSucces()),

  // BERANDA //
  GoRoute(
      path: "/beranda",
      name: Routes.berandaPage,
      builder: (context, state) => const BerandaPage()),

  // PEKERJAAN //
  GoRoute(
      path: "/sudahmelamar",
      name: Routes.sudahmelamarPage,
      builder: (context, state) => const SudahMelamar()),
  GoRoute(
      path: "/listsjobs",
      name: Routes.listsjobsPage,
      builder: (context, state) => const ListsJobs()),
  GoRoute(
      path: "/detailpage",
      name: Routes.detailPage,
      builder: (context, state) => const Detail()),

  // COMPANY //
  GoRoute(
    path: "/companyscreen",
    name: Routes.companyscreenPage,
//      builder: (context, state) => const AboutCompany()),
    builder: (context, state) {
      BlocProvider.of<ListsJobsCubit>(context)
          .fetchJobs(AuthenticationHeaderRequest(""));
      return CompanyScreen();
    },
  ),
  GoRoute(
      path: "/postcompany",
      name: Routes.postcompanyPage,
      builder: (context, state) => const PostCompany()),

  // NOTIFIKASI //
  GoRoute(
      path: "/notifikasi",
      name: Routes.notifikasiPage,
      builder: (context, state) => const NotifikasiScreen()),

  // PROFILE//
  GoRoute(
      path: "/profileblank",
      name: Routes.profileblankPage,
      builder: (context, state) => const ProfileBlank()),
  GoRoute(
      path: "/profilesettings",
      name: Routes.profilesettingsPage,
      builder: (context, state) => const ProfileSettings()),
  GoRoute(
      path: "/profileupdatepassword",
      name: Routes.profileupdatepasswordPage,
      builder: (context, state) => const ProfileUpdatePassword()),
  GoRoute(
      path: "/profileeditprofile",
      name: Routes.profileeditprofilePage,
      builder: (context, state) => const ProfileEditProfile()),
  GoRoute(
      path: "/profileinputability",
      name: Routes.profileinputabilityPage,
      builder: (context, state) => const ProfileInputAbility()),
  GoRoute(
      path: "/profileinputlanguage",
      name: Routes.profileinputlanguagePage,
      builder: (context, state) => const ProfileInputLanguage()),

  //akbar
  GoRoute(
      path: "/profileinputportofolio",
      name: Routes.profileinputportofolioPage,
      builder: (context, state) => const ProfileInputPortfolio()),

  // SEARCH //
  GoRoute(
      path: "/searchorang",
      name: Routes.searchorangPage,
      builder: (context, state) => const SearchOrang()),

  // TES CONTOH //
  GoRoute(
      path: "/articlescreen",
      name: Routes.articlescreenPage,
      builder: (context, state) => const ArticleScreen()),
  GoRoute(
      path: "/backend",
      name: Routes.backendPage,
      builder: (context, state) => const BackendTest()),
  GoRoute(
      path: "/samplecoba",
      name: Routes.samplecobaPage,
      builder: (context, state) => const SampleCoba()),
]);
