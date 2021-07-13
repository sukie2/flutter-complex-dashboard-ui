import 'package:flutter/material.dart';

class SpendSection extends StatelessWidget {
  const SpendSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 80.0,
        child: Card(
          color: Colors.blue[50],
          elevation: 1.0,
          shadowColor: Colors.blue[50],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Available to spend'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('LKR'), Text('100,000')],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.pink,
              )
            ],
          ),
        ),
      ),
    );
  }
}
