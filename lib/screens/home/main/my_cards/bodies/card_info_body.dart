import 'package:flutter/material.dart';

import '../my_card_info.dart';

class CardInfoBody extends StatelessWidget {
  const CardInfoBody({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final MyCardInfo widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 185,
        width: 320,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xffEAEAEA),
              Color(widget.color),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo_visa.png'),
                Text(
                  '\$ ${widget.balance}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '**** **** **** ${widget.numberCard}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'VALID THRU',
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                    Text(
                      '12/22',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Text(
              'Margo Lepski',
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
