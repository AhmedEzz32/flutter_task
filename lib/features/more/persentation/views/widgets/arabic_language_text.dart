import 'package:flutter/material.dart';

class ArabicLanguageText extends StatefulWidget {
  const ArabicLanguageText({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ArabicLanguageTextState createState() => _ArabicLanguageTextState();
}

class _ArabicLanguageTextState extends State<ArabicLanguageText> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Arabic Language',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },
                icon: isDarkMode
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
