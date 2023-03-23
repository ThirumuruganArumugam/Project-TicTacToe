// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xoModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$XoModel on _XoModelBase, Store {
  late final _$WinnerAtom = Atom(name: '_XoModelBase.Winner', context: context);

  @override
  String get Winner {
    _$WinnerAtom.reportRead();
    return super.Winner;
  }

  @override
  set Winner(String value) {
    _$WinnerAtom.reportWrite(value, super.Winner, () {
      super.Winner = value;
    });
  }

  @override
  String toString() {
    return '''
Winner: ${Winner}
    ''';
  }
}
