import 'package:flutter/material.dart';

class OneKey extends StatelessWidget {
  const OneKey({Key? key, required this.number, required this.callback})
      : super(key: key);

  final int number;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    // TODO.
    // te le mides a mejorar este key??
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: MaterialButton(
            key: Key(number.toString()),
            color: Colors.transparent,
            shape: RoundedRectangleBorder(side: BorderSide (width: 0.5, color: Colors.lightGreenAccent),
                borderRadius: BorderRadius.circular(10) ),
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            onPressed: () {
              callback(number);
            },
            child: Text(number.toString(),
                style: const TextStyle(
                  fontSize: 26.0,
                  color: Colors.black,
                ))),
      ),
    );
  }
}
