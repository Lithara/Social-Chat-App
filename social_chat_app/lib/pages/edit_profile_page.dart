import 'package:flutter/material.dart';
import 'package:social_chat_app/components/add_text_field.dart';
import 'package:social_chat_app/components/toolbar.dart';
import 'package:social_chat_app/config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppStrings.editProfile, actions: [],),
      body: Column(
        children: [
          AppTextField(hint: AppStrings.firstName),
          AppTextField(hint: AppStrings.lastName),
          AppTextField(hint: AppStrings.phoneNumber),
          AppTextField(hint: AppStrings.location),
        ],
      ),
    );
  }
}