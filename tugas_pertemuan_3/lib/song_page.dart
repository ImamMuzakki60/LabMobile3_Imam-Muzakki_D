import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'side_menu.dart';

class Song {
  final String title;
  final String artist;
  final String albumCover;
  final String releaseDate;
  final String youtubeUrl;

  Song({
    required this.title,
    required this.artist,
    required this.albumCover,
    required this.releaseDate,
    required this.youtubeUrl,
  });
}

class SongPage extends StatelessWidget {
  final List<Song> songs = [
    Song(
      title: "Flutter Beats",
      artist: "Code Maestro",
      albumCover: "https://placekitten.com/200/200",
      releaseDate: "2024-09-15",
      youtubeUrl: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    ),
    Song(
      title: "Dart Harmony",
      artist: "Mobile Devs",
      albumCover: "https://placekitten.com/201/201",
      releaseDate: "2024-09-10",
      youtubeUrl: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    ),
    Song(
      title: "Widget Symphony",
      artist: "UI Virtuoso",
      albumCover: "https://placekitten.com/202/202",
      releaseDate: "2024-09-05",
      youtubeUrl: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    ),
    Song(
      title: "State Management Serenade",
      artist: "Reactive Ensemble",
      albumCover: "https://placekitten.com/203/203",
      releaseDate: "2024-08-30",
      youtubeUrl: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    ),
  ];

  Future<void> _launchUrl(BuildContext context, String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open YouTube video')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latest Songs')),
      drawer: SideMenu(),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  songs[index].albumCover,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(songs[index].title),
              subtitle: Text('${songs[index].artist} • Released: ${songs[index].releaseDate}'),
              trailing: IconButton(
                icon: Icon(Icons.play_circle_filled),
                color: Theme.of(context).primaryColor,
                onPressed: () => _launchUrl(context, songs[index].youtubeUrl),
              ),
              onTap: () => _launchUrl(context, songs[index].youtubeUrl),
            ),
          );
        },
      ),
    );
  }
}