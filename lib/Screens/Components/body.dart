import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_spike_a/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Run the Feed™".toUpperCase(),
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: kTertiaryColorL,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            " At adko, your content is your content. We don’t force you into \n contracts that strip away your creative freedom for a few bucks. \n We connect you to the brands you love—the places you were \n going to shop at anyway—and we give you the opportunity to \n create ads for them. It’s on your own terms. And it’s that simple.",
            style: TextStyle(
              color: kTertiaryColorL,
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}
