import 'package:dashboard_ui_app/widgets/action_button.dart';
import 'package:flutter/material.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Card(
        color: Colors.blue[50],
        elevation: 1.0,
        shadowColor: Colors.blue[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ActionButton(
              name: "Fund tansfer",
              color: Colors.blueGrey,
              icon: Icon(Icons.add),
            ),
            ActionButton(
              name: "name",
              color: Colors.blueGrey,
              icon: Icon(Icons.add),
            ),
            ActionButton(
              name: "name",
              color: Colors.blueGrey,
              icon: Icon(Icons.add),
            ),
            ActionButton(
              name: "name",
              color: Colors.blueGrey,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
