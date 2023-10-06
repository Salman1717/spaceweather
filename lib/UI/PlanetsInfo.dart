import 'package:flutter/material.dart';

import 'InformationTab.dart';





class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Overview'),
          // bottom: const TabBar(
          //   dividerColor: Colors.transparent,
          //   tabs: <Widget>[
          //     Tab(
          //       text: '360',
          //       icon: Icon(Icons.flight),
          //     ),
          //     Tab(
          //       text: 'Information',
          //       icon: Icon(Icons.luggage),
          //     ),
          //   ],
          // ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NestedTabBar('Flights'),
            NestedTabBar('Trips'),

          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: '360'),
            Tab(text: 'Information'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child:  Text('${widget.outerTab}: Specifications tab')),
              ),
              Card(
                margin: const EdgeInsets.all(6.0),
                child: Center(
                    child: MainTabSpace()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
