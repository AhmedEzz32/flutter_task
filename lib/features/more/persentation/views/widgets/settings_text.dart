import 'package:flutter/cupertino.dart';

class SettingsText extends StatelessWidget {
  const SettingsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize : 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
