import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusCircle extends StatelessWidget {
  final String _status;
  StatusCircle(this._status);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: _status == "Alive"
            ? Colors.green
            : _status == "Dead"
                ? Colors.red
                : Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
