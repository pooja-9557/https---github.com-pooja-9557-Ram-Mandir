import 'package:flutter/material.dart';
import 'package:ram_mandir/music_player.dart';

class MusicListPage extends StatelessWidget {
  // Sample music data

  final List<Map<String, String>> musicList = [
    {'title': 'Shri Ram Dhun', 'artist': 'Sonu Nigam', 'image': 'ram_dhun.jpg'},
    {'title': 'Aaj Rahuveer Padhare', 'artist': 'Narci', 'image': 'narci.jpg'},
    {
      'title': 'Ram Siya Ram',
      'artist': 'NarciSachet Tandon, Parampara Tandon',
      'image': 'mangal.jpg'
    },
    {'title': 'Jai Shree Ram', 'artist': 'Arjit Singh', 'image': 'jai.jpg'},

    // Add more entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BHAJAN LIST',
          style: TextStyle(
              color: const Color.fromARGB(255, 245, 243, 243),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 153, 106, 240),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: musicList.length,
          itemBuilder: (context, index) {
            return MusicListItem(
              title: musicList[index]['title']!,
              artist: musicList[index]['artist']!,
              imageUrl: musicList[index]['image']!,
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class MusicListItem extends StatelessWidget {
  final String title;
  final String artist;
  final String imageUrl;
  final int index;

  MusicListItem({
    required this.title,
    required this.artist,
    required this.imageUrl,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MusicPlayer(
              title: title, // Pass title to MusicPlayer
              index: index,
            ),
          ),
        );
      },
      leading: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage('asset/$imageUrl'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(title),
      subtitle: Text(artist),
    );
  }
}
