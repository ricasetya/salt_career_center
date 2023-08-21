// ignore_for_file: constant_identifier_names

abstract class BaseConfig {
  static const String BASE_DOMAIN_MOC = "103.175.216.13:9091";

  // PATH
  static const String BASE_PATH_MOC = "/v1";

  // LOGIN
  static const String LOGIN_MOC = "/login";
  static const String REGISTER_MOC = "/register";
  static const String FORGET_PASSWORD = "/forget-password";
  static const String FORGET_PASSWORD_OTP = "/otp/submit";
  static const String FORGET_PASSWORD_UPDATE = "/update/forget-password";

  // BERANDA
  static const String HOME_MOC = "/beranda";
  static const String LISTS_JOBS = "/list-jobs";
  static const String BASE_COMPANY = "/company/";

  // PROFILE
  static const String PROFILE_DATA = "/profile";
  static const String LISTS_COMPANY = "/list-company";
  static const String CHANGE_PASSWORD = "/change/password";
  static const String UPDATE_PHOTO = "/profile/1/update-photo";
  static const String UPDATE_PROFILE = "/profile/update-profile";
}
