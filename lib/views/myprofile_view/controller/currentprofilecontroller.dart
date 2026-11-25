import 'dart:convert';
import 'package:task_manager/constant/localstorage.dart';
import '../../../constant/app_url.dart';
import 'package:http/http.dart' as http;
import '../model/current_profile.dart';

class Currentprofilecontroller {
  CurrentProfile? profile;

  Future<void> getCurrentProfile() async {
    final uri = Uri.parse(AppUrl.currentprofile);
    final token = await Localstorage.getToken();

    print('Token Type: ${token.runtimeType}');
    print('Token: $token');

    final response = await http.get(
      uri,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      profile = CurrentProfile.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception('Failed to fetch current profile');
    }
  }
}