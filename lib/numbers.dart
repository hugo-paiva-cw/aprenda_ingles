import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Numbers extends StatefulWidget {
  const Numbers({Key? key}) : super(key: key);

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  final AudioCache _audioCache = AudioCache(prefix: 'assets/audios/');

  _execute(String audioName) {
    _audioCache.play('$audioName.mp3');
  }

  @override
  initState() {
    super.initState();
    _audioCache.loadAll([
      '1.mp3',
      '2.mp3',
      '3.mp3',
      '4.mp3',
      '5.mp3',
      '6.mp3',
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
        children: [
          GestureDetector(
            onTap: () {
              _execute('1');
            },
            child: Image.asset('assets/images/1.png'),
          ),
          GestureDetector(
            onTap: () {
              _execute('2');
            },
            child: Image.asset('assets/images/2.png'),
          ),
          GestureDetector(
            onTap: () {
              _execute('3');
            },
            child: Image.asset('assets/images/3.png'),
          ),
          GestureDetector(
            onTap: () {
              _execute('4');
            },
            child: Image.asset('assets/images/4.png'),
          ),
          GestureDetector(
            onTap: () {
              _execute('5');
            },
            child: Image.asset('assets/images/5.png'),
          ),
          GestureDetector(
            onTap: () {
              _execute('6');
            },
            child: Image.asset('assets/images/6.png'),
          ),
        ],
    );
  }
}
