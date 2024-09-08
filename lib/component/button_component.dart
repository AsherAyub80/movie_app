import 'package:flutter/material.dart';

Widget button(String buttonText, double width, double height, Color? color,
    void Function()? onpressed) {
  return (SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
        onPressed: onpressed,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        )),
  ));
}
