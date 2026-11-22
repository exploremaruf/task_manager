class AppUrl {
  static const String baseUrl = 'https://task-management-nu-wheat-23.vercel.app/api/v1';
  static const String login = '$baseUrl/auth/signin';
  static const String signup = '$baseUrl/auth/signup';
  static const String verifyRegistrationOTP = '$baseUrl/auth/verify-otp';
  static const String resendRegistrationOTP = '$baseUrl/auth/resend-otp';
  static const String termsAndCondition = '$baseUrl/terms-and-conditions';
  static const String createTask = '$baseUrl/tasks';
}
