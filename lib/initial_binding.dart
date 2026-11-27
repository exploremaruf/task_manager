import 'package:get/get.dart';
import 'package:task_manager/views/account_setting/controller/delete_account_controller.dart';
import 'package:task_manager/views/add_task_view/controller/add_task_controller.dart';
import 'package:task_manager/views/auth_view/controller/login_controller.dart';
import 'package:task_manager/views/auth_view/controller/otp_controller.dart';
import 'package:task_manager/views/auth_view/controller/signup_controller.dart';
import 'package:task_manager/views/change_password/change_password_controller.dart';
import 'package:task_manager/views/edit_profile_view/controller/update_profile_controller.dart';
import 'package:task_manager/views/myprofile_view/controller/currentprofilecontroller.dart';
import 'package:task_manager/views/terms_and_condition_view/controller/terms_and_condition_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<DeleteAccountController>(() => DeleteAccountController());
    Get.lazyPut<AddTaskController>(() => AddTaskController());
    Get.lazyPut<OTPController>(() => OTPController());
    Get.lazyPut<SignupController>(() => SignupController());
    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
    Get.lazyPut<UpdateProfileController>(() => UpdateProfileController());
    Get.lazyPut<Currentprofilecontroller>(() => Currentprofilecontroller());
    Get.lazyPut<TermsAndConditionController>(
      () => TermsAndConditionController(),
    );
  }
}
