import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/presentation/pages/company/cubit/about_company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/company/cubit/company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/company/cubit/jobs_company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/jobs/cubit/list_job_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/cubit/profile_data_cubit.dart';
import 'package:telkom_career/presentation/pages/search/cubit/lists_company_data_cubit.dart';
import '../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/loginmoc", routes: [
  // LOGIN //
  GoRoute(
      path: "/loginmoc",
      name: Routes.loginmocPage,
      builder: (context, state) => const LoginPageMoc()),

  // REGISTER //
  GoRoute(
      path: "/registers",
      name: Routes.registersPage,
      builder: (context, state) => const Registers()),
  GoRoute(
      path: "/register",
      name: Routes.registerPage,
      builder: (context, state) => const Register()),

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
      name: Routes.homescreenPage,
      builder: (context, state) => const HomeScreen()),

  // PEKERJAAN //
  GoRoute(
    path: "/jobscreen",
    name: Routes.jobscreenPage,
    builder: (context, state) {
      BlocProvider.of<ListJobCubit>(context)
          .fetchListJob(AuthenticationHeaderRequest(""));
      return const JobsScreen();
    },
  ),

  // COMPANY //

  // NOTIFIKASI //
  GoRoute(
      path: "/notifikasi",
      name: Routes.notifikasiPage,
      builder: (context, state) => const NotifikasiScreen()),

  // PROFILE//
  GoRoute(
    path: "/profileblank",
    name: Routes.profileblankPage,
    builder: (context, state) {
      BlocProvider.of<ProfileDataCubit>(context)
          .fetchProfileData(AuthenticationHeaderRequest(""));
      return const ProfileBlank();
    },
  ),
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
  GoRoute(
      path: "/experience",
      name: Routes.workexperience,
      builder: (context, state) => const WorkExperience()),

  // SEARCH //
  GoRoute(
      path: "/searchscreen",
      name: Routes.searchscreenPage,
      routes: [
        GoRoute(
          path: "companyscreen",
          name: Routes.companyscreenPage,
          builder: (context, state) {
            String id = state.extra as String;
            BlocProvider.of<CompanyDataCubit>(context)
                .fetchCompanyData(AuthenticationHeaderRequest(""), id);
            return const CompanyScreen();
          },
        ),
      ],
      builder: (context, state) {
        BlocProvider.of<ListJobCubit>(context)
            .fetchListJob(AuthenticationHeaderRequest("accesToken"));
        BlocProvider.of<ListsCompanyDataCubit>(context)
            .fetchListsCompanyData(AuthenticationHeaderRequest("accesToken"));
        return const SearchScreen();
      }),
]);
