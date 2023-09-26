class TokenHeaderRequest {
  Future<String> accesToken;
  TokenHeaderRequest({
    required this.accesToken,
  });

  Map<String, String> toHeader() {
    return <String, String>{
      'Authorization': 'Bearer $accesToken',
    };
  }
}
