import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task_manager/constant/local_storage.dart';

import '../../../constant/app_url.dart';

import 'package:http/http.dart' as http;

import '../model/current_profile.dart';

class Currentprofilecontroller {
  CurrentProfile? profile;

  Future<void> getCurrentProfile() async {
    final uri = Uri.parse(AppUrl.currentprofile);
    final token = await LocalStorage.getToken();

    debugPrint('Token Type: ${token.runtimeType}');
    debugPrint('Token: $token');

    final response = await http.get(
      uri,
      headers: {'Authorization': 'Bearer $token'},
    );

    debugPrint('Status Code: ${response.statusCode}');
    debugPrint('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      profile = CurrentProfile.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch current profile');
    }
  }
}
