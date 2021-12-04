import 'package:flutter/material.dart';

class Graphic1 extends StatefulWidget {
  const Graphic1({
    Key? key,
  }) : super(key: key);

  @override
  State<Graphic1> createState() => _Graphic1State();
}

class _Graphic1State extends State<Graphic1> {
  bool isClick = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isClick = !isClick;
          });
          print('almashdi, $isClick');
        },
        child: SizedBox(
          height: 250,
          width: double.infinity,
          child: Image.asset(
            isClick ? 'assets/images/graf.png' : 'assets/images/grafic2.png',
            fit: isClick ? BoxFit.none : BoxFit.none,
          ),
        ),
      ),
    );
  }
}
