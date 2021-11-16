import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';
import 'package:xcomponents/xcomponets/x_theme.dart';

class XContentTab extends DetectPlataform<DefaultTabController,
    CupertinoPageScaffold, DefaultTabController> {
  final Function(int) segmentedOnValueChanged;
  final int sharedValue;

  final List<Widget> tabBar;
  final List<Widget> tabBuilder;

  XContentTab({
    required this.segmentedOnValueChanged,
    required this.sharedValue,
    required this.tabBar,
    required this.tabBuilder,
  });

  @override
  DefaultTabController createAndroidWidget(BuildContext context) {
    return DefaultTabController(
      length: tabBar.length,
      child: Scaffold(
        appBar: TabBar(tabs: tabBar),
        body: TabBarView(
          children: tabBuilder,
        ),
      ),
    );
  }

  @override
  CupertinoPageScaffold createIosWidget(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              child: CupertinoSegmentedControl<int>(
                borderColor: XTheme.grey,
                pressedColor: XTheme.notWhite,
                unselectedColor: XTheme.notWhite,
                selectedColor: XTheme.grey,
                children: tabBar.asMap(),
                onValueChanged: segmentedOnValueChanged,
                groupValue: sharedValue,
              ),
            ),
            Container(
              child: tabBuilder.asMap()[sharedValue],
            ),
          ]),
        ),
      ),
    );
  }

  @override
  DefaultTabController createWebWidget(BuildContext context) {
    return DefaultTabController(
      length: tabBar.length,
      child: Scaffold(
        appBar: TabBar(tabs: tabBar),
        body: TabBarView(
          children: tabBuilder,
        ),
      ),
    );
  }
}
