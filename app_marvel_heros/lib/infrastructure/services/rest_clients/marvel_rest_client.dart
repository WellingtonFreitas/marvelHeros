import 'package:get/get_connect/connect.dart';

class RestClient extends GetConnect {
  RestClient() {
    httpClient.baseUrl = 'url_client';
  }
}
