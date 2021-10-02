import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Screens/Authenticate/authenticate.dart';
import 'package:flutter_spike_a/models/user.dart';
import 'package:provider/provider.dart';
import 'Home/home_screen.dart';
import 'Authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<adkoUser?>(context);
    //return either home or authenticate widget
    if (user?.uid == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
