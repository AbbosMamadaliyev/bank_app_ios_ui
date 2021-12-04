import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final int colorValue;
  final double radius;
  final Color colorText;
  final String text;
  final void Function() func;

  const DefaultButton({
    Key? key,
    required this.colorValue,
    required this.radius,
    required this.colorText,
    required this.text,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          func();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(colorValue)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: colorText, fontSize: 17),
        ),
      ),
    );
  }
}
