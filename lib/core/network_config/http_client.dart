import 'package:http/http.dart' as http;

import 'interceptor/interceptor_client.dart';

class AuthHttpClient extends http.BaseClient {
  final InterceptorClient _interceptorClient;
  final String token;
  String? customApikey;

  AuthHttpClient(
    this._interceptorClient, {
    required this.token,
    this.customApikey,
  });

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['X-API-KEY'] = customApikey ?? "";
    request.headers['Authorization'] = 'Bearer $token';
    return _interceptorClient.send(request);
  }
}

class NormalHttpClient extends http.BaseClient {
  final InterceptorClient _interceptorClient;

  NormalHttpClient(this._interceptorClient);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return _interceptorClient.send(request);
  }
}
