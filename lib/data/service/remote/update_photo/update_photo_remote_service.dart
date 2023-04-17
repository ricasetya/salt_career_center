import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';

class UpdatePhotoRemoteservice {
  Client client = Client();
  Future<Response> updatePhoto(String id, String profileId) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_PHOTO);

    return client.post(url, body: {"Masukan id": id, "profileId": profileId});
  }
}
