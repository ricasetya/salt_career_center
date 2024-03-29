// ignore_for_file: file_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:telkom_career/domain/model/data/profile/profile_edit_profile_data.dart';
import 'package:telkom_career/presentation/pages/company/cubit/company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/main_navigation_view.dart';
import '../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(
  initialLocation: "/loginmoc",
  routes: [
    // LOGIN //
    GoRoute(
        path: "/loginmoc",
        name: Routes.loginmocPage,
        builder: (context, state) => const LoginPageMoc()),

    // REGISTER //
    GoRoute(
        path: "/register",
        name: Routes.registerPage,
        builder: (context, state) => const Register()),

    // FORGET PASSWORD //
    GoRoute(
      path: "/forgotpassword",
      name: Routes.forgotpasswordsPage,
      builder: (context, state) => const ForgetPassword(),
    ),
    GoRoute(
      path: "/forgotpassworemailsent",
      name: Routes.forgotpassworemailsentdPage,
      builder: (context, state) {
        String idEmail = state.extra as String;
        return ForgotPasswordEmailSent(
          idEmail: idEmail,
        );
      },
    ),

    GoRoute(
      path: "/forgotpasswordupdatepassword",
      name: Routes.forgotpasswordupdatepasswordPage,
      builder: (context, state) //=> const ForgotPasswordUpdatePassword()
          {
        String idEmail = state.extra as dynamic;
        return ForgotPasswordUpdatePassword(
          idEmail: idEmail,
        );
      },
    ),
    GoRoute(
        path: "/forgotpasswordupdatepasswordsucces",
        name: Routes.forgotpasswordupdatepasswordsuccesPage,
        builder: (context, state) =>
            const ForgotPasswordUpdatePasswordSucces()),

    // BERANDA //
    GoRoute(
      path: "/homescreen",
      name: Routes.homescreenPage,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: "/mainNavigationPage",
      name: Routes.mainNavigationPage,
      builder: (context, state) {
        return const MainNavigationView(
          indexScreen: 0,
        );
      },
    ),

    // PEKERJAAN //
    GoRoute(
      path: "/jobscreen",
      name: Routes.jobscreenPage,
      builder: (context, state) {
        // BlocProvider.of<ListJobCubit>(context).fetchListJob();
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
        //BlocProvider.of<ProfileDataCubit>(context).fetchProfileData();
        return const MainNavigationView(
          indexScreen: 3,
        );
      },
    ),
    GoRoute(
        path: "/profilesettings",
        name: Routes.profilesettingsPage,
        builder: (context, state) => const ProfileSettings()),
    GoRoute(
        path: "/profileinputexperience",
        name: Routes.profileworkexperience,
        builder: (context, state) => const WorkExperience()),
    GoRoute(
        path: "/profileChangePassword",
        name: Routes.profileChangePasswordPage,
        builder: (context, state) => const ProfileChangePassword()),
    GoRoute(
        path: "/profileCVResumePage",
        name: Routes.profileCVResumePage,
        builder: (context, state) => const InputResume()),
    GoRoute(
        path: "/profileEditProfile",
        name: Routes.profileEditProfilePage,
        builder: (context, state) //=> const ProfileEditProfile(),
            {
          final userData = state.extra as ProfileEditProfileData;
          return ProfileEditProfile(userData: userData);
        }),
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
        builder: (context, state) => const InputPortfolio()),
    // GoRoute(
    //     path: "/experience",
    //     name: Routes.workexperience,
    //     builder: (context, state) => const WorkExperience()),
    GoRoute(
        path: "/inputEducation",
        name: Routes.inputEducation,
        builder: (context, state) => const InputEducation()),

    // SEARCH //
    GoRoute(
      path: "/searchscreen",
      name: Routes.searchscreenPage,
      builder: (context, state) {
        // BlocProvider.of<ListJobCubit>(context).fetchListJob();
        // BlocProvider.of<ListsCompanyDataCubit>(context).fetchListsCompany();
        return const SearchScreen();
      },
      routes: [
        GoRoute(
          path: "companyscreen",
          name: Routes.companyscreenPage,
          builder: (context, state) {
            String id = state.extra as String;
            BlocProvider.of<CompanyDataCubit>(context).onSubmitCompanyData(id);
            return const CompanyScreen(
                // id: id,
                );
          },
        ),
      ],
    ),
  ],
);
