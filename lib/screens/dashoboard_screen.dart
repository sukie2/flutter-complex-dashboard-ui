import 'package:dashboard_ui_app/widgets/accunt_row.dart';
import 'package:dashboard_ui_app/widgets/actions_section.dart';
import 'package:dashboard_ui_app/widgets/banners_section.dart';
import 'package:dashboard_ui_app/widgets/floating_tab_bar.dart';
import 'package:dashboard_ui_app/widgets/profile_section.dart';
import 'package:dashboard_ui_app/widgets/spend_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late ScrollController _controller;
  double iconContainerHeight = 70;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController()..addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
      if (iconContainerHeight != 0)
        setState(() {
          iconContainerHeight = 0;
        });
    }
    if (_controller.position.userScrollDirection == ScrollDirection.forward) {
      if (iconContainerHeight == 0)
        setState(() {
          iconContainerHeight = 70;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: _controller,
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
            SliverToBoxAdapter(
              child: BannersSection(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return AccountRow();
                },
                childCount: 10, // 1000 list items
              ),
            ),
          ],
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: iconContainerHeight,
          padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: FloatingTabBar(),
        )
      ],
    );
  }
}
