import 'package:flutter/material.dart';
import 'package:social_chat_app/components/add_text_field.dart';
import 'package:social_chat_app/components/toolbar.dart';
import 'package:social_chat_app/config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ToolBar(title: AppStrings.editProfile, actions: [],),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            AppTextField(hint: AppStrings.firstName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.lastName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.phoneNumber),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.location),
          ],
        ),
      ),
    );
  }
}