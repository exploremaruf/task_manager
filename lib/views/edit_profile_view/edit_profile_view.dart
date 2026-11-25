import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/utils/custom_loader.dart';
import 'package:task_manager/views/edit_profile_view/controller/update_profile_controller.dart';
import 'package:task_manager/views/edit_profile_view/widgets/edit_profile_header_widget.dart';

import '../../constant/app_colors.dart';
import '../../utils/app_button.dart';
import '../../utils/app_input_fields.dart';
import '../../utils/custom_text.dart';

class EditProfileView extends StatefulWidget {
  final String firstname;
  final String lastname;
  final String emailaddress;
  final String address;

  const EditProfileView({
    super.key,
    required this.firstname,
    required this.lastname,
    required this.emailaddress,
    required this.address,
  });

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailaddressController = TextEditingController();
  final addressController = TextEditingController();

  final UpdateProfileController _updateProfileController = Get.put(
    UpdateProfileController(),
  );

  void setInfo() {
    firstnameController.text = widget.firstname;
    lastnameController.text = widget.lastname;
    emailaddressController.text = widget.emailaddress;
    addressController.text = widget.address;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setInfo();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: CircleAvatar(
              backgroundColor: AppColors.textfieldcolor,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.primary,
                size: 20,
              ),
            ),
          ),
        ),
        title: CustomText(
          text: 'Edit Profile ',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primarytext,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 20),
                EditProfileHeaderWidget(),
                SizedBox(height: 23),
                Column(
                  children: [
                    AppInputFields(
                      controller: firstnameController,
                      label: 'First Name',
                      hinttext: 'e.g. Kristin ',
                    ),
                    SizedBox(height: 23),
                    AppInputFields(
                      controller: lastnameController,
                      label: 'Last Name',
                      hinttext: 'e.g. Cooper',
                    ),
                    SizedBox(height: 23),

                    SizedBox(height: 23),
                    AppInputFields(
                      controller: addressController,
                      label: 'Address',
                      hinttext: 'e.g. 1234 Elm Street, Springfield, IL',
                    ),
                    SizedBox(height: 23),
                    GetBuilder<UpdateProfileController>(
                      builder: (controller) {
                        return Visibility(
                          visible: !controller.isloading,
                          replacement: Center(child: CustomLoader()),

                          child: AppButton(
                            title: 'Update',
                            ontap: () {
                              String firstname = firstnameController.text
                                  .trim();
                              String lastname = lastnameController.text.trim();
                              String address = addressController.text.trim();

                              _updateProfileController.updateProfile(
                                firstname,
                                lastname,
                                address,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
