import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownButton({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: values.first,
        items: values.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
        ),
        onChanged: (_) {},
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
    );
  }
}
