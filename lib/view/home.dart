import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xcomponents/xcomponets/components/x_action_sheet.dart';
import 'package:xcomponents/xcomponets/components/x_alert_dialog.dart';
import 'package:xcomponents/xcomponets/components/x_app_bar.dart';
import 'package:xcomponents/xcomponets/components/x_button.dart';
import 'package:xcomponents/xcomponets/components/x_scaffold.dart';
import 'package:xcomponents/xcomponets/components/x_slider.dart';
import 'package:xcomponents/xcomponets/components/x_tab.dart';
import 'package:xcomponents/xcomponets/components/x_text_field.dart';
import 'package:xcomponents/xcomponets/components/x_time_pick.dart';
import 'package:xcomponents/xcomponets/x_theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//Example
  List<Widget> tabBar = [
    Container(
      padding: EdgeInsets.all(10),
      child: Text('Teste 1'),
    ),
    Container(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.ac_unit),
    ),
  ];
  List<Widget> tabBuilder = [
    // tab1
    Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'Primeira Tab',
              style: XTheme.headline,
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            XAlertDialog(
              title: 'title',
              content: Container(),
              actions: [
                XButton(
                  child: Container(
                    child: Text('Okay'),
                  ),
                  onPressed: () => Navigator.defaultRouteName,
                ),
                XButton(
                  child: Container(
                    child: Text('calcel'),
                  ),
                  onPressed: () => Navigator.defaultRouteName,
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Builder(builder: (context) {
              return XButton(
                  child: Text('ActionSheet'),
                  onPressed: () => callPlatformActionSheet(context));
            }),
            SizedBox(
              height: 20,
            ),
            Builder(builder: (context) {
              return XButton(
                child: Text('Vamos testar outra coisa'),
                onPressed: () => Navigator.of(context).pushNamed('product'),
              );
            }),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ),
    // tab2
    Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Text(
              'Segunda Tab',
              style: XTheme.headline,
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            XTimePick(),
            SizedBox(
              height: 20,
            ),
            XSlider(
              // onChanged: (value) => value,
              value: 50,
              min: 1,
              max: 100,
              divisions: 5,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ),
  ];

  int sharedValue = 0;

//Widget

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      appBar: XAppBar(
        title: const Text(
          'X Components',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.brown,
            fontSize: 34,
          ),
        ),
      ).build(context),
      body: Container(
        padding: const EdgeInsetsDirectional.all(10),
        child: XContentTab(
          segmentedOnValueChanged: (int value) {
            setState(() {
              sharedValue = value;
            });
          },
          sharedValue: sharedValue,
          tabBar: tabBar,
          tabBuilder: tabBuilder,
        ).build(context),
      ),
    ).build(context);
  }
}
