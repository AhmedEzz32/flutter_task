import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class SampleText1 extends StatefulWidget {
  const SampleText1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SampleText1State createState() => _SampleText1State();
}

class _SampleText1State extends State<SampleText1> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
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
                  'Sample Text 1',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  isLiked ? AssetsData.like : AssetsData.unlike,
                  height: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
