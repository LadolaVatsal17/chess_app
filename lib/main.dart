import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(title: Text("CHESS")),
        body: Center(
          child: ChessBoard(
            boardType: BoardType.orange,
            size:400.00 ,
            onMove: (move){
            },
            onCheckMate: (color){
              print(color);
            },
            onDraw: (){
              print("Match Draw!!");
            },
          ),
        ),
      ),
    );
  }
}

