//IMPORT
import 'dart:ui';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/cupertino.dart';

import 'package:flash/flash.dart';
import 'package:image_picker/image_picker.dart';
import 'package:telkom_career/data/repository/login_moc/login_repositorymoc_impl.dart';
import 'dart:io';

import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/data/repository/logins_repository/logins_repository_impl.dart';
import 'package:telkom_career/presentation/navigation/Routes.dart';
import 'package:telkom_career/presentation/pages/login_moc/cubit/loginmoc_cubit.dart';
import 'package:telkom_career/presentation/pages/logins/bloc/logins_bloc.dart';

import 'package:telkom_career/data/repository/registers_repository/registers_repository.impl.dart';
import 'package:telkom_career/presentation/pages/registers/bloc/registers_bloc.dart';

//PART//
//login
part 'login/login.dart';
part 'logins/logins_screen.dart';
part 'login_moc/login_screen_moc.dart';

//register
part 'register/register.dart';
part 'registers/registers.dart';

//resetpassword
part 'forgot_password/forgot_pasword_update_password.dart';
part 'forgot_password/forgot_password_email_sent.dart';
part 'forgot_password/forgot_password_update_password_succes.dart';
part 'forgot_password/forgot_password.dart';

//beranda
part 'beranda/beranda.dart';

//pekerjaan
part 'pekerjaan/sudah_melamar.dart';
part 'pekerjaan/pekerjaan_page.dart';
part 'pekerjaan/detail.dart';

// COMPANY
part 'company/about_company.dart';
part 'company/post_company.dart';

// NOTIFIKASI
part 'notifikasi/notifikasi_screen.dart';

// Profile
part 'profile/profile_blank.dart';
part 'profile/profile_settings.dart';
part 'profile/profile_update_password.dart';
part 'profile/profile_edit_profile.dart';
part 'profile/profile_input_ability.dart';
part 'profile/profile_input_language.dart';
// akbar
part 'profile/profile_input_portofolio.dart';

//search
part 'search/search_orang.dart';

// SAMPLE
part 'backend.dart';
part 'sample.dart';
