import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SampleText3 extends StatefulWidget {
  const SampleText3({super.key});

  @override
  State<SampleText3> createState() => _SampleText3State();
}

class _SampleText3State extends State<SampleText3>
{
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
                  'Sample Text 3',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize : 22,
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
