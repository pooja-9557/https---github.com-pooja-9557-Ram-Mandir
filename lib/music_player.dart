import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicPlayer extends StatefulWidget {
  final String title;
  final int index;

  MusicPlayer({required this.title, required this.index});
  @override
  MusicPlayerState createState() => MusicPlayerState();
}

class MusicPlayerState extends State<MusicPlayer> {
  List<String> song = ["ram_dhun.mp3", "ram_siya.mp3", "ram.mp3", "jai.mp3"];
  int index = 0;
  late AudioPlayer _audioPlayer;
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setAsset("asset/${song[widget.index]}");
    _audioPlayer.play();
  }

  void _playPause() {
    if (isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.navigate_before,
          color: Colors.white,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              color: const Color.fromARGB(255, 245, 243, 243),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 153, 106, 240),
      ),
      body: Center(
        // Wrap the Column with Center
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: [
              Expanded(
                child: Image.asset(
                  'asset/song.png',
                ),
              ),
              IconButton(
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: _playPause,
                iconSize: 50,
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
