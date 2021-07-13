import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[50],
      margin: EdgeInsets.only(left: 16.0, top: 48.0, right: 16.0, bottom: 16.0),
      height: 80,
      child: Row(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('images/man_avatar.png'),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Inner circle'),
            Text('John Doe'),
          ],
        ),
        Spacer(),
        Badge(
          position: BadgePosition.topEnd(top: -10, end: -4),
          badgeContent: Text(''),
          child: Icon(
            Icons.notifications,
            size: 24.0,
            color: Colors.lightBlueAccent,
          ),
        ),
        SizedBox(width: 8),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Badge(
            position: BadgePosition.topEnd(top: -10, end: -9),
            badgeContent: Text(''),
            child: Icon(
              Icons.mail,
              size: 24.0,
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ]),
    );
  }
}
