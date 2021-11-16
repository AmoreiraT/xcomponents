import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XTextField extends DetectPlataform<TextFormField, CupertinoFormSection,
    TextFormField> {
  XTextField({
    required this.label,
    required this.validator,
    required this.onChanged,
  });

  final String label;
  final String? validator;
  final Function(String) onChanged;

  @override
  TextFormField createAndroidWidget(BuildContext context) {
    return TextFormField(
      scrollPadding: EdgeInsets.all(10),
      decoration: InputDecoration(
        errorText: validator, labelText: label, border: OutlineInputBorder(),
        // icon: Icon(Icons.ac_unit),
      ),
      style: TextStyle(),
      onChanged: onChanged,
    );
  }

  @override
  CupertinoFormSection createIosWidget(BuildContext context) {
    return CupertinoFormSection.insetGrouped(
      header: Text(label),
      children: List<Widget>.generate(
        1,
        (int index) {
          return CupertinoTextFormFieldRow(
            onChanged: onChanged,
            // prefix: Text(label),
            placeholder: validator,
            validator: (String? value) {
              return value = validator;
            },
          );
        },
      ),
    );
  }

  @override
  TextFormField createWebWidget(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        errorText: validator, labelText: label, border: OutlineInputBorder(),
        // icon: Icon(Icons.ac_unit),
      ),
      style: TextStyle(),
      onChanged: onChanged,
    );
  }
}
