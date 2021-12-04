import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class FilterCardCheks extends StatelessWidget {
  FilterCardCheks({
    Key? key,
  }) : super(key: key);

  bool ischeck1 = false;
  bool ischeck2 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cards'),
          _cards('4562', ischeck1),
          _cards('7398', ischeck2),
        ],
      ),
    );
  }

  Widget _cards(String numberCard, bool check) {
    return StatefulBuilder(builder: (context, setState) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/label.png'),
              const SizedBox(width: 14),
              Column(
                children: [
                  Text('Visa'),
                  Text('**$numberCard'),
                ],
              )
            ],
          ),
          Checkbox(
              value: check,
              checkColor: Colors.black,
              activeColor: colDefaultColor2,
              onChanged: (value) {
                setState(() {
                  check = value!;
                });
              }),
        ],
      );
    });
  }
}
