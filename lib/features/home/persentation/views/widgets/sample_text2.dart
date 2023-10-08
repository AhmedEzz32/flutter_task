import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SampleText2 extends StatefulWidget {
  const SampleText2({Key? key}) : super(key: key);

  @override
  _SampleText2State createState() => _SampleText2State();
}

class _SampleText2State extends State<SampleText2> {
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
                  'Sample Text 2',
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
