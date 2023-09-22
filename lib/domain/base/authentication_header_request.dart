// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthenticationHeaderRequest {
  String accesToken;

  AuthenticationHeaderRequest(
    this.accesToken,
  );
  Map<String, String> toHeader() {
    return {
      'Authorization': 'Bearer $accesToken',
      //'Content-Type': 'application/json'
    };
  }
}

class AuthenticationHeadersRequestUpload {
  String accesToken;
  AuthenticationHeadersRequestUpload(
    this.accesToken,
  );

  Map<String, String> toHeader() {
    return {
      'Authorization': 'Bearer $accesToken',
      // 'Content-Type': 'multipart/form-data',
    };
  }
}
