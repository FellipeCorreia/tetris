import 'package:tetris/values.dart';

class Piece {
  // Type of Tetris Piece
  TetrominoShape type;

  Piece({required this.type});

  //List of pieces
  List<int> position = [];

  void initializePiece() {
    switch (type) {
      case TetrominoShape.L:
        position = [4,14,24,25];
        break;
      default:
    }
  }
}
