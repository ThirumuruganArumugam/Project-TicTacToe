import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
part 'xoModel.g.dart';

class XoModel = _XoModelBase with _$XoModel;

abstract class _XoModelBase with Store {
  
  ObservableList<String> Collection = ObservableList();
  bool isCrossAssigned = false;

  @observable
  // ignore: non_constant_identifier_names
  String Winner = "";
  bool checkreset = false;

  @action
  void setwinner({required String Winner})=> this.Winner=Winner;
}
