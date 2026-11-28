class AppUrl {
  static const String baseUrl =
      'https://task-management-nu-wheat-23.vercel.app/api/v1';
  static const String login = '$baseUrl/auth/signin';
  static const String signup = '$baseUrl/auth/signup';
  static const String verifyRegistrationOTP = '$baseUrl/auth/verify-otp';
  static const String resendRegistrationOTP = '$baseUrl/auth/resend-otp';
  static const String termsAndCondition = '$baseUrl/terms-and-conditions';
  static const String createTask = '$baseUrl/tasks';
  static const String currentprofile = '$baseUrl/user/profile';
  static const String updateprofile = '$baseUrl/user/profile';
  static const String changepassword = '$baseUrl/user/change-password';
  static const String deleteaccount = '$baseUrl/user/account';
  static const String getalltask = '$baseUrl/tasks?page=1&limit=20';
}
