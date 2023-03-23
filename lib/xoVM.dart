import 'package:mobx/mobx.dart';
import 'main.dart';
import 'xoModel.dart';

class XoVM extends XoModel {
  XoVM() {
    Collection = ObservableList.of(["", "", "", "", "", "", "", "", ""]);
  }

  tappeditem(int index) {
    if (Collection[index] == "" && Winner == "") {
      if (isCrossAssigned) {
        Collection[index] = "Circle";
        isCrossAssigned = false;
      } else {
        Collection[index] = "Cross";
        isCrossAssigned = true;
      }
    }
    winner();
  }

  winner() async {
    
    
    if (Collection[0] == Collection[1] &&
        Collection[0] == Collection[2] &&
        Collection[0] != '') {
      Winner = "${Collection[0]} is the winner";
      checkreset = true;
      
    } else if (Collection[3] == Collection[4] &&
        Collection[3] == Collection[5] &&
        Collection[3] != '') {
      Winner = "${Collection[3]} is the winner";
      checkreset = true;
    } else if (Collection[6] == Collection[7] &&
        Collection[6] == Collection[8] &&
        Collection[6] != '') {
      Winner = "${Collection[6]} is the winner";
      checkreset = true;
    } else if (Collection[0] == Collection[3] &&
        Collection[0] == Collection[6] &&
        Collection[0] != '') {
      Winner = "${Collection[0]} is the winner";
      checkreset = true;
    } else if (Collection[1] == Collection[4] &&
        Collection[1] == Collection[7] &&
        Collection[1] != '') {
      Winner = "${Collection[1]} is the winner";
      checkreset = true;
    } else if (Collection[2] == Collection[5] &&
        Collection[2] == Collection[8] &&
        Collection[2] != '') {
      Winner = "${Collection[2]} is the winner";
      checkreset = true;
    } else if (Collection[0] == Collection[4] &&
        Collection[0] == Collection[8] &&
        Collection[0] != '') {
      Winner = "${Collection[0]} is the winner";
      checkreset = true;
    } else if (Collection[2] == Collection[4] &&
        Collection[2] == Collection[6] &&
        Collection[2] != '') {
      Winner = "${Collection[2]} is the winner";
      checkreset = true;
    } else if (Collection[0] != '' &&
        Collection[1] != '' &&
        Collection[2] != '' &&
        Collection[3] != '' &&
        Collection[4] != '' &&
        Collection[5] != '' &&
        Collection[6] != '' &&
        Collection[7] != '' &&
        Collection[8] != '') {
      Winner = "The game is tied";
    }

    if (Winner != "") {
      checkreset = true;
      await Future.delayed(const Duration(seconds: 3));
      if (checkreset) {
        reset();
      }
    }
  }

  reset() {
    for (int i = 0; i < 9; i++) {
      Collection[i] = "";
      // ignore: unrelated_type_equality_checks
      checkreset = false;
      setwinner (Winner: "");

    }
  }
}
