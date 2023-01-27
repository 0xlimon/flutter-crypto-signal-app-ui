import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/screens/widgets/dark_mode.dart';
import 'package:crypto_signal/widgets/signal_spot_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/dark_theme_provider.dart';

class SpotSignalScreen extends StatefulWidget {
  const SpotSignalScreen({super.key});

  @override
  State<SpotSignalScreen> createState() => _SpotSignalScreenState();
}

class _SpotSignalScreenState extends State<SpotSignalScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("CryptoSignal"),
          backgroundColor: Colors.transparent,
          actions: [DarkModeWidget()],
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              child: TabBar(
                controller: _tabController,
                indicatorColor: customColors.primaryGreen800,
                indicatorWeight: 3,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    text: 'Spot',
                  ),
                  Tab(
                    text: 'Futures',
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverList(
                          delegate:
                              SliverChildBuilderDelegate((context, index) {
                        return SignalSpotItem();
                      }, childCount: 20))
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverList(
                          delegate:
                              SliverChildBuilderDelegate((context, index) {
                        return SignalSpotItem();
                      }, childCount: 3))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
