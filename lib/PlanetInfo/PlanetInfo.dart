import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'InformationTab.dart';







class TabBarExample extends StatelessWidget {
  final Widget PakkaFinal;
  const TabBarExample({super.key,required this.PakkaFinal});



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Overview'),
          backgroundColor: Colors.black,
        ),
        body:  TabBarView(
          children: <Widget>[
            NestedTabBar(destWidget:  PakkaFinal,'flights'),
            NestedTabBar('Trips',destWidget: PakkaFinal,),

          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {

  const NestedTabBar(this.outerTab, {super.key,required this.destWidget});

  final String outerTab;
  final Widget destWidget;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState(destBar: destWidget);
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final Widget destBar;
   _NestedTabBarState({required this.destBar});

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
                    child: destBar),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
