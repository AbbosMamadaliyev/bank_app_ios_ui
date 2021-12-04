import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ChatBody1 extends StatelessWidget {
  const ChatBody1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dialogues',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildDialoguesType('Actions'),
                        _buildDialoguesType('Channels'),
                        _buildDialoguesType('Postcards'),
                      ],
                    ),
                    width: 240,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 28,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      CupertinoIcons.settings,
                      size: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              decorationCard(context,
                  iconData: CupertinoIcons.star,
                  text: 'Transfer Money',
                  color: 0xffF2FE8D),
              decorationCard(context,
                  iconData: CupertinoIcons.briefcase,
                  text: 'Lou Bonuses',
                  color: 0xffB2D0CE),
              decorationCard(context,
                  iconData: CupertinoIcons.chart_bar_alt_fill,
                  text: 'Lou Assets',
                  color: 0xffAA9EB7),
              decorationCard(context,
                  iconData: CupertinoIcons.add,
                  text: 'My Bonuses',
                  color: 0xffF2FE8D),
            ],
          ),
        ),
      ],
    );
  }

  Widget decorationCard(context,
      {required IconData iconData, required String text, required int color}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff252626),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(color),
              ),
              child: Icon(iconData),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }

  Container _buildDialoguesType(String text) {
    return Container(
      // margin: EdgeInsets.only(right: 15),
      alignment: Alignment.center,
      height: 28,
      width: text.length < 8 ? 65 : 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: colDefaultColor1,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
