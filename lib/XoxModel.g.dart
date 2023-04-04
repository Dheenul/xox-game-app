// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'XoxModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$XoxModel on _XoxModelBase, Store {
  late final _$winnerAtom =
      Atom(name: '_XoxModelBase.winner', context: context);

  @override
  String get winner {
    _$winnerAtom.reportRead();
    return super.winner;
  }

  @override
  set winner(String value) {
    _$winnerAtom.reportWrite(value, super.winner, () {
      super.winner = value;
    });
  }

  late final _$_XoxModelBaseActionController =
      ActionController(name: '_XoxModelBase', context: context);

  @override
  void setWinner({required String winner}) {
    final _$actionInfo = _$_XoxModelBaseActionController.startAction(
        name: '_XoxModelBase.setWinner');
    try {
      return super.setWinner(winner: winner);
    } finally {
      _$_XoxModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
winner: ${winner}
    ''';
  }
}
