import 'package:flutter/material.dart';
import 'package:task/features/home/persentation/views/widgets/sample_text1.dart';
import 'package:task/features/home/persentation/views/widgets/sample_text2.dart';
import 'package:task/features/home/persentation/views/widgets/sample_text3.dart';
import 'package:task/features/home/persentation/views/widgets/top_likes.dart';
import '../../../../../core/widgets/divider.dart';
import 'play_audio.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'This is App',
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
          TopLikes(),
          Divider(
            color: Colors.black38,
          ),
          SampleText1(),
          MyDivider(),
          SampleText2(),
          MyDivider(),
          SampleText3(),
          Divider(
            color: Colors.black38,
          ),
          TopLikes(),
          Divider(
            color: Colors.black,
          ),
          AudioPlay(),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
