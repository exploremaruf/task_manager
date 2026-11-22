import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:task_manager/constant/app_url.dart';

class TermsAndConditionController extends GetxController {
  Future GetTerms() async {
    Uri Url = Uri.parse(AppUrl.termsAndCondition);

    var response = await get(Url);

    final responsebody = jsonDecode(response.body);



  }
}
