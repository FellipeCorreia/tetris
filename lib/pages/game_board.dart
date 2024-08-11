import 'package:flutter/material.dart';
import 'package:tetris/components/pixel.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  //Dimensões do board
  int colWidth = 10;

  int rowHeight = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: colWidth,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0
          
        ),
        itemBuilder: (context, index) => Pixel(color: Colors.grey.shade900),
        itemCount: colWidth * rowHeight,
        
      ),
    );
  }
}