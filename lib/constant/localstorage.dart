import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Localstorage {
  static FlutterSecureStorage storage = new FlutterSecureStorage();

  static Future<void> saveToken(String token) async {
    await storage.write(key: "_token", value: token);
  }

  static Future<String?> getToken() async {
    return await storage.read(key: '_token');
  }

  static Future<void> deleteToken() async {
    await storage.delete(key: "_token");
  }
}
