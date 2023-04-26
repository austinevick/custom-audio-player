import 'package:audio_player/sound_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: 65,
            child: SoundPlayer(
              me: true,
              audioSrc:
                  "https://firebasestorage.googleapis.com/v0/b/flutter-media-app.appspot.com/o/videos%2F2023-04-22T23%3A20%3A34.594423?alt=media&token=c22cd26a-04b5-4c82-bc6b-9bf9e8d934a3",
            )),
      ),
    );
  }
}
