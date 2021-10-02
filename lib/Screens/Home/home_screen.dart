import 'dart:html';
import 'package:flutter_spike_a/Screens/Components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Screens/Components/app_bar.dart';
import 'package:flutter_spike_a/Screens/Components/menu_item.dart';
import 'package:flutter_spike_a/constant.dart';
import 'package:flutter_spike_a/models/user.dart';

//globals
final double right = right;
final double top = top;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(MediaQuery.of(context).size.width * 0.67, 0),
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/adkoBCG.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Body(),
            ],
          ),
        ],
      ),
    );
  }
}
