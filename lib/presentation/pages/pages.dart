//IMPORT
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

//PART//
//login
part 'login/loginpage.dart';

//register
part 'register/register.dart';

//resetpassword
part 'forgot_password/forpas_update.dart';
part 'forgot_password/forpass_email_sent.dart';
part 'forgot_password/update_password_succes.dart';
part 'forgot_password/forgot_password_screen.dart';

//beranda
part 'beranda/beranda.dart';

//pekerjaan
part 'pekerjaan/sudah_melamar.dart';
part 'pekerjaan/pekerjaan_page.dart';
part 'pekerjaan/detail.dart';

// COMPANY
part 'company/tentang.dart';
part 'company/postscreen.dart';

part '../ui-static/backend.dart';
