import 'package:flutter/material.dart';
import 'package:social_chat_app/components/add_text_field.dart';
import 'package:social_chat_app/components/toolbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: 'Edit Profile', actions: [],),
      body: Column(
        children: [
          AppTextField(hint: 'First Name'),
          AppTextField(hint: 'Last Name'),
          AppTextField(hint: 'Phone Number'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}