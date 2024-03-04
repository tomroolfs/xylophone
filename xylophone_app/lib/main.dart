import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Xylophone',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: MaterialButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('note$soundNumber.wav'));
          },
          enableFeedback: false,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        foregroundColor: Colors.white,
        title: const Text(
          'Xylophone',
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: const Color.fromARGB(255, 0, 13, 155), soundNumber: 1),
          buildKey(color: const Color.fromARGB(255, 0, 13, 185), soundNumber: 2),
          buildKey(color: const Color.fromARGB(255, 0, 13, 215), soundNumber: 3),
          buildKey(color: const Color.fromARGB(255, 0, 13, 255), soundNumber: 4),
          buildKey(color: const Color.fromARGB(255, 0, 50, 255), soundNumber: 5),
          buildKey(color: const Color.fromARGB(255, 0, 75, 255), soundNumber: 6),
          buildKey(color: const Color.fromARGB(255, 0, 100, 255), soundNumber: 7),
        ],
      ),
    );
  }
}
