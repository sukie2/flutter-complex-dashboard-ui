import 'package:dashboard_ui_app/widgets/accunt_row.dart';
import 'package:dashboard_ui_app/widgets/actions_section.dart';
import 'package:dashboard_ui_app/widgets/banners_section.dart';
import 'package:dashboard_ui_app/widgets/floating_tab_bar.dart';
import 'package:dashboard_ui_app/widgets/profile_section.dart';
import 'package:dashboard_ui_app/widgets/spend_section.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
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
        Padding(padding: EdgeInsets.only(bottom: 60), child: FloatingTabBar())
      ],
    );
  }
}
