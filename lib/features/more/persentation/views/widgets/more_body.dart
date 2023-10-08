import 'package:flutter/material.dart';
import 'package:task/features/more/persentation/views/widgets/arabic_language_text.dart';
import 'package:task/features/more/persentation/views/widgets/dark_mode_text.dart';
import 'package:task/features/more/persentation/views/widgets/settings_text.dart';
import '../../../../../core/widgets/divider.dart';

class MoreBody extends StatelessWidget {
  const MoreBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'More',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
          ),
          SettingsText(),
          Divider(
            color: Colors.black,
          ),
          DarkModeText(),
          MyDivider(),
          ArabicLanguageText(),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
