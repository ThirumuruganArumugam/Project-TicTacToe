import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx/src/observer.dart';
import 'package:xogame/xoModel.dart';
import 'package:xogame/xoVM.dart';

// ignore: must_be_immutable
class Xoview extends StatelessWidget {
  final XoVM _xoVM = XoVM();

  Xoview({super.key});

  // final xoVM _counterVM = xoVM();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tic Tac Toe",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color(0xff0D031B),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(15),
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 7,
                  crossAxisSpacing: 7,
                ),
                itemBuilder: (context, int index) {
                  return Observer(builder: (context) {
                    return ElevatedButton(
                        style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          _xoVM.tappeditem(index);
                        },
                        child: _xoVM.Collection[index] == ""
                            ? const Icon(Icons.edit, size: 50,)
                            : _xoVM.Collection[index] == "Cross"
                                ? const Icon(Icons.close,size: 50,
                                color: Colors.red,
                                )
                                : const Icon(Icons.circle_outlined,size: 50,
                                color: Colors.green,));
                  });
                }),
          ),
          Observer(
            builder: (context) {
              return Text(
                _xoVM.Winner,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: _xoVM.reset,
              
              style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.blue),
              padding: const MaterialStatePropertyAll(EdgeInsets.fromLTRB(50,10,50,10)),
              splashFactory: InkRipple.splashFactory,
              overlayColor: MaterialStateProperty.all<Color>(Colors.black),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )),
              shadowColor: const MaterialStatePropertyAll(Colors.black),
              ),
              
              
              child: const Text("RESET",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
              
          
          
          const SizedBox(
            height: 25,
          ),
          // ignore: prefer_const_constructors
          Text(
            "Best of luck",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
