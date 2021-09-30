import 'dart:html';
import 'package:flutter_spike_a/Screens/Components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Screens/Components/app_bar.dart';
import 'package:flutter_spike_a/constant.dart';

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
                  offset: Offset(1380, 0),
                  blurRadius: 50,
                  color: Colors.black.withOpacity(0.9),
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
              Padding(
                padding: EdgeInsets.only(top: 500, right: 0),
              ),
              Body(),
            ],
          ),
        ],
      ),
    );
  }
}
