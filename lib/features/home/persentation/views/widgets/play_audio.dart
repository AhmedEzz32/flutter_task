import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:task/core/utils/assets.dart';

class AudioPlay extends StatefulWidget {
  const AudioPlay({Key? key}) : super(key: key);

  @override
  _AudioPlayState createState() => _AudioPlayState();
}

class _AudioPlayState extends State<AudioPlay> {
  late AudioPlayer _audioPlayer;
  bool isPlaying = false;
  String buttonText = 'Play This';

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    // Set up the audio source
    _audioPlayer.setUrl('https://api.quran.com/api/v4/chapter_recita4ons/1/1'); // Replace with the actual MP3 URL

    // Listen for changes in playback state
    _audioPlayer.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        setState(() {
          isPlaying = false;
          buttonText = 'Play This';
        });
      }
    });
  }

  Future<void> _playAudio() async {
    try {
      if (isPlaying) {
        await _audioPlayer.pause();
      } else {
        await _audioPlayer.play();
      }

      setState(() {
        isPlaying = !isPlaying;
        buttonText = isPlaying ? 'Pause' : 'Play This';
      });
    } catch (e) {
      // Handle any errors here
      print('Error playing audio: $e');
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: GestureDetector(
            onTap: () {
              _playAudio();
            },
            child: Image.asset(
              isPlaying ? AssetsData.pause : AssetsData.play, // Replace with your play and pause button assets
              height: 35,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            _playAudio();
          },
          child: Text(
            buttonText,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
          ),
        ),
      ],
    );
  }
}
