// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class XylophonePlay extends StatefulWidget {
//   XylophonePlay({Key? key}) : super(key: key);

//   @override
//   State<XylophonePlay> createState() => _XylophonePlayState();
// }

// class _XylophonePlayState extends State<XylophonePlay> {
//   final audioPlayer = AudioPlayer();
//   final player = AudioCache(prefix: 'assets/');

//   void playSound(int soundNumber) async {
//     final url = await player.load('xylophone/note$soundNumber.wav');
//     audioPlayer.setSourceUrl(url.path);
//     audioPlayer.resume();
//   }

//   Expanded createBox(color, soundNumber) {
//     return Expanded(
//       child: TextButton(
//         onPressed: () {
//           playSound(soundNumber);
//         },
//         style: TextButton.styleFrom(padding: EdgeInsets.zero),
//         child: Container(
//           color: color,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         createBox(Colors.red, 1),
//         createBox(Colors.orange, 2),
//         createBox(Colors.yellow, 3),
//         createBox(Colors.green, 4),
//         createBox(Colors.blue, 5),
//         createBox(Colors.teal, 6),
//         createBox(Colors.purple, 7)
//         // Slider(
//         //   min: 0,
//         //   max: duration.inSeconds.toDouble(),
//         //   value:position.inSeconds.toDouble(),
//         //   onChanged: (value) async {})
//       ],
//     );
//   }
// }
