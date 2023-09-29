// ignore_for_file: unused_import, avoid_print

import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_cvresume/profile_cv_resume_request.dart';

class ProfileUpdateCvResumeRemoteService {
  Client client = Client();
  Future<Response> updateUpdateCvResumeRemoteService(
    AuthenticationHeadersRequestUpload header,
    ProfileCvResumeRequest request,
    //String id
  ) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.ADD_CVRESUME,
    );

    print("URL : ${url.toString()}");
    //print("request Profile Update Photo : ${request.toString()}");

    var multipartRequest = MultipartRequest('POST', url);

    multipartRequest.files.add(await MultipartFile.fromPath(
        "file", request.file!.path,
        filename: request.file!.path.split("/").last,
        contentType: MediaType("file", 'pdf')));
    multipartRequest.headers.addAll(header.toHeader());

    var streamedResponse = await multipartRequest.send();
    var response = await Response.fromStream(streamedResponse);

    return response;
  }
}
