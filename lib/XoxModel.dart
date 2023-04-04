import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'XoxModel.g.dart';

class XoxModel = _XoxModelBase with _$XoxModel;

abstract class _XoxModelBase with Store {
  @observable
  String winner = "";
  @action
  void setWinner({required String winner}) {
    this.winner = winner;
    print("$winner is the winner");
  }

  ObservableList<String> gameData = ObservableList();
  bool iconChanged = false;
  bool reset = false;
  int resetCount = 0;
  // @observable
  // IconData buttonIcon = Icons.edit;
  // @observable
  // List<IconData> buttonData = [
  //   Icons.edit,
  //   Icons.edit,
  //   Icons.edit,
  //   Icons.edit,
  //   Icons.edit,
  //   Icons.edit,
  //   Icons.edit,
  //   Icons.edit,
  //   Icons.edit,
  // ];
  // @observable
  // String iconToSow = 'edit';

  // void setButtonData({required List<IconData> buttonData}) {
  //   this.buttonData = buttonData;
  // }
}
