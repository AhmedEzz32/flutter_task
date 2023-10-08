class QuranAudio {
  final String audioUrl;

  QuranAudio({required this.audioUrl});

  factory QuranAudio.fromJson(Map<String, dynamic> json) {
    return QuranAudio(
      audioUrl: json['audio_url'] ?? '',
    );
  }
}
