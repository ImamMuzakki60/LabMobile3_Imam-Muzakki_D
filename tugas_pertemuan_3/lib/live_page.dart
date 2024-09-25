import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'side_menu.dart';

class LivePage extends StatelessWidget {

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
      appBar: AppBar(title: Text('Live')),
      drawer: SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.live_tv, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text(
              'Latest Live Stream',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                    () => _launchUrl(context, 'https://www.youtube.com');
              },
              child: Text('Watch Now'),
            ),
          ],
        ),
      ),
    );
  }
}