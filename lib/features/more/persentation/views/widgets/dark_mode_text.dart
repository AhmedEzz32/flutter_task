import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/themes.dart';


class DarkModeText extends StatefulWidget {
  const DarkModeText({super.key});

  @override
  _DarkModeTextState createState() => _DarkModeTextState();
}

class _DarkModeTextState extends State<DarkModeText> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  themeProvider.toggleTheme(); // Toggle the theme
                },
                icon: themeProvider.themeData.brightness == Brightness.dark
                    ? const Icon(
                  Icons.toggle_on,
                  color: Colors.blue,
                  size: 60,
                )
                    : const Icon(
                  Icons.toggle_off,
                  color: Colors.grey,
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
