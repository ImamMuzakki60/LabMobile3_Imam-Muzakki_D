import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'live_page.dart';
import 'song_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginPage(),
  '/home': (context) => HomePage(),
  '/live': (context) => LivePage(),
  '/song': (context) => SongPage(),
};
