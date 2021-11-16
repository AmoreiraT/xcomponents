import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> callPlatformActionSheet(BuildContext context) async {
  if (Platform.isAndroid) {
    return createAndroidBottomSheet(context);
  } else if (Platform.isIOS) {
    return createIosBottomSheet(context);
  } else {
    //TODO
    return createAndroidBottomSheet(context);
  }
}

//TODO

Future<void> createAndroidBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      //isScrollControlled: true,     //bottomsheet goes full screen, if bottomsheet has a scrollable widget such as a listview as a child.
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: ListView(
            reverse: true,
            controller: new ScrollController(),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              _createTile(context, 'Ok!', Icons.message, _action1),
              _createTile(context, 'Google', Icons.message, _action1),
              _createTile(context, 'Say Hi!', Icons.message, _action1),
              GridView.builder(
                itemCount: 9,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.blue[(index % 9) * 100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      height: 20.0,
                      width: 20.0,
                      child: Center(
                        child: Text('hello'),
                      ),
                    ),
                  );
                },
                //padding,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
              ),
            ],
          ),
        );
      });
}

ListTile _createTile(
    BuildContext context, String name, IconData icon, Function action) {
  return ListTile(
    leading: Icon(icon),
    title: Text(name),
    onTap: () {
      Navigator.pop(context);
      action();
    },
  );
}

_action1() {
  print('action 1');
}

Future<void> createIosBottomSheet(BuildContext context) {
  return showCupertinoModalPopup(
    context: context,
    builder: (context) => CupertinoActionSheet(
      title: Text('Favorite Dessert'),
      message: Text('Please select the best dessert from the options below.'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Text('Profiteroles'),
          onPressed: () {/** */},
        ),
        CupertinoActionSheetAction(
          child: Text('Cannolis'),
          onPressed: () {/** */},
        ),
        CupertinoActionSheetAction(
          child: Text('Trifie'),
          onPressed: () {/** */},
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        isDefaultAction: true,
        child: Text('Cancel'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
  );
}
