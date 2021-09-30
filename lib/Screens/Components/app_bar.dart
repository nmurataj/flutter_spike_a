import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Components/sign_up_button.dart';
import 'package:flutter_spike_a/constant.dart';

import 'package:flutter_spike_a/Screens/Components/menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.32),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/HQ2.png",
            height: MediaQuery.of(context).size.height * (1 / 20),
            width: MediaQuery.of(context).size.width * (1 / 20),
          ),
          const SizedBox(
            width: 5,
          ),
          const Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "About",
            press: () {},
          ),
          MenuItem(
            title: "Spots",
            press: () {},
          ),
          MenuItem(
            title: "Account",
            press: () {},
          ),
          sign_up_button(),
        ],
      ),
    );
  }
}
