import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XTimePick extends DetectPlataform<Center, CupertinoTimerPicker, Center> {
  @override
  Center createAndroidWidget(BuildContext context) {
    TimeOfDay selectedTime = TimeOfDay.now();
    _selectTime(BuildContext context) async {
      final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        initialEntryMode: TimePickerEntryMode.dial,
      );
      if (timeOfDay != null && timeOfDay != selectedTime) {
        // ignore: unnecessary_statements
        () {
          selectedTime = timeOfDay;
        };
      }
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              _selectTime(context);
            },
            child: Text("Choose Time"),
          ),
          Text("${selectedTime.hour}:${selectedTime.minute}"),
        ],
      ),
    );
  }

  @override
  CupertinoTimerPicker createIosWidget(BuildContext context) {
    return CupertinoTimerPicker(
      onTimerDurationChanged: (time) => time,
    );
  }

  @override
  Center createWebWidget(BuildContext context) {
    TimeOfDay selectedTime = TimeOfDay.now();
    _selectTime(BuildContext context) async {
      final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        initialEntryMode: TimePickerEntryMode.dial,
      );
      if (timeOfDay != null && timeOfDay != selectedTime) {
        // ignore: unnecessary_statements
        () {
          selectedTime = timeOfDay;
        };
      }
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              _selectTime(context);
            },
            child: Text("Choose Time"),
          ),
          Text("${selectedTime.hour}:${selectedTime.minute}"),
        ],
      ),
    );
  }
}
