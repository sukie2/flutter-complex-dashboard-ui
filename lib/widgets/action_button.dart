import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Color color;
  final String name;
  final Icon icon;

  ActionButton({required this.name, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        overlapped(),
      ],
    );
  }

  Widget overlapped() {
    final overlap = 20.0;
    final items = [
      Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Icon(Icons.change_history),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        height: 75.0,
        width: 80.0,
        decoration: BoxDecoration(
            border: Border.all(
              color: color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Text(
          name,
          textAlign: TextAlign.center,
        ),
      ),
    ];

    List<Widget> stackLayers = List<Widget>.generate(items.length, (index) {
      return Padding(
        padding: EdgeInsets.fromLTRB(0, index.toDouble() * overlap, 0, 0),
        child: items[index],
      );
    });

    return Stack(
      children: stackLayers,
      alignment: Alignment.topCenter,
    );
  }
}
