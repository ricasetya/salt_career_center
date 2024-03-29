import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Commons {
  final prefs = SharedPreferences.getInstance();

  Future setUid(String token) async {
    final storage = await prefs;
    await storage.setString("token", token);
  }

  Future<String> getUid() async {
    final storage = await prefs;
    return storage.getString("token")!;
  }

  Future<bool> removeUid() async {
    final storage = await prefs;
    return storage.remove("token");
  }

  void showSnackbarError(context, String msg) {
    showTopSnackBar(context, CustomSnackBar.error(message: msg));
  }

  void showSnackbarInfo(context, String msg) {
    showTopSnackBar(context, CustomSnackBar.info(message: msg));
  }
}
