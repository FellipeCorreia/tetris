import 'package:flutter/material.dart';
import 'package:tetris/components/piece.dart';
import 'package:tetris/components/pixel.dart';
import 'package:tetris/values.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  //Board dimensions
  int colWidth = 10;
  int rowHeight = 15;

  //Actual Tetris piece
  Piece currentPiece = Piece(type: TetrominoShape.L);

  //Initialize the game
  @override
  void initState() {
    super.initState();
  
  }

void startGame() {
  currentPiece = Piece(type: TetrominoShape.L);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: colWidth, crossAxisSpacing: 0, mainAxisSpacing: 0),
        itemBuilder: (context, index) {
          if (currentPiece.position.contains(index)) {
            return Pixel(color: Colors.red);
          }
          return Pixel(color: Colors.grey[900]);
        },
        itemCount: colWidth * rowHeight,
      ),
    );
  }
}
