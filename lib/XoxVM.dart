import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:xox_game/XoxBO.dart';
import 'XoxModel.dart';
import 'XoxView.dart';

class XoxVM extends XoxModel {
  XoxVM() {
    gameData = ObservableList.of([
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ]);
  }
  void tappedButton(int index) {
    // print("hello");
    if (gameData[index] == "" && winner == "") {
      if (iconChanged) {
        // print("1");
        gameData[index] = "Circle";
        iconChanged = false;
      } else {
        // print("2");
        gameData[index] = "Close";
        iconChanged = true;
      }
      winnerFunction();
    }
  }

  resetGame() {
    for (int i = 0; i < gameData.length; i++) {
      gameData[i] = "";
    }
    iconChanged = false;
    counter = 0;
    winner = "";
    reset = false;
    resetCount++;
  }

  int resetFunction = 0;
  int counter = 0;
  void winnerFunction() async {
    if (gameData[0] == gameData[1] &&
        gameData[0] == gameData[2] &&
        gameData[0] != "") {
      setWinner(winner: "${gameData[0]} is the winner");
      //winner = ("${gameData[0]} is the winner");
      counter++;
    } else if (gameData[3] == gameData[4] &&
        gameData[3] == gameData[5] &&
        gameData[3] != "") {
      setWinner(winner: "${gameData[3]} is the winner");
      counter++;
    } else if (gameData[6] == gameData[7] &&
        gameData[6] == gameData[8] &&
        gameData[6] != "") {
      setWinner(winner: "${gameData[6]} is the winner");
      counter++;
    } else if (gameData[0] == gameData[3] &&
        gameData[0] == gameData[6] &&
        gameData[0] != "") {
      setWinner(winner: "${gameData[0]} is the winner");
      counter++;
    } else if (gameData[1] == gameData[4] &&
        gameData[1] == gameData[7] &&
        gameData[1] != "") {
      setWinner(winner: "${gameData[1]} is the winner");
      counter++;
    } else if (gameData[2] == gameData[5] &&
        gameData[2] == gameData[8] &&
        gameData[2] != "") {
      setWinner(winner: "${gameData[2]} is the winner");
      counter++;
    } else if (gameData[0] == gameData[4] &&
        gameData[0] == gameData[8] &&
        gameData[0] != "") {
      setWinner(winner: "${gameData[0]} is the winner");
      counter++;
    } else if (gameData[2] == gameData[4] &&
        gameData[2] == gameData[6] &&
        gameData[2] != "") {
      setWinner(winner: "${gameData[2]} is the winner");
      counter++;
    }
    // else if (gameData[0] == '' &&
    //     gameData[3] == '' &&
    //     gameData[6] == '' &&
    //     gameData[0] == '' &&
    //     gameData[1] == '' &&
    //     gameData[2] == '' &&
    //     gameData[0] == '' &&
    //     gameData[2] == '') {
    //   winner = "Draw... ";
    // }
    else {
      counter++;
      if (counter > 8 && winner == "") {
        setWinner(winner: "Draw");
        if (winner != "") {
          reset = true;
          await Future.delayed(const Duration(seconds: 3));
          if (reset) {
            resetGame();
          }
        }
      }
    }
    if (winner != "") {
      reset = true;
      await Future.delayed(const Duration(seconds: 3));
      if (reset) {
        resetGame();
      }
    }
  }
}

  // int counter = 0;
  // changeIcon(int number) {
  //   var tempList = buttonData;
  //   if (counter % 2 == 0) {
  //     tempList[number] = Icons.close;
  //     counter++;
  //   } else {
  //     tempList[number] = Icons.circle;
  //     counter++;
  //   }
  //   buttonData = [];
  //   buttonData.addAll(tempList);
  // }
  // checkWinner(){
  //   if(buttonData[0] == buttonData[1] == buttonData [2]){
  //     print("{}")
  //   }
  // }
// }
