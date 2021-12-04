import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class Transfers extends StatefulWidget {
  double transferSum;
  double healthSum;
  String transferDay;

  Transfers({
    Key? key,
    required this.healthSum,
    required this.transferDay,
    required this.transferSum,
  }) : super(key: key);

  @override
  State<Transfers> createState() => _TransfersState();
}

class _TransfersState extends State<Transfers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 10),
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.transferDay),
          _buildTransfers(),
          _buildHealth(),
        ],
      ),
    );
  }

  Row _buildHealth() {
    return Row(
      children: [
        Row(
          children: [
            const CircleAvatar(
              child: Icon(
                CupertinoIcons.arrow_up_to_line,
                color: Colors.black,
              ),
              backgroundColor: colDefaultColor2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Health',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pharmacy',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          '- \$${widget.healthSum}',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  Row _buildTransfers() {
    return Row(
      children: [
        Row(
          children: [
            const CircleAvatar(
              child: Icon(
                CupertinoIcons.arrow_down_to_line,
                color: Colors.black,
              ),
              backgroundColor: colDefaultColor1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Transfer',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Incoming transfer',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          '+ \$${widget.transferSum}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
