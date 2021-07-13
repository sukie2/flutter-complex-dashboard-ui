import 'package:dashboard_ui_app/widgets/actions_section.dart';
import 'package:dashboard_ui_app/widgets/profile_section.dart';
import 'package:dashboard_ui_app/widgets/spend_section.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: ProfileSection(),
        ),
        SliverToBoxAdapter(
          child: SpendSection(),
        ),
        SliverToBoxAdapter(
          child: ActionsSection(),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    );
  }
}
