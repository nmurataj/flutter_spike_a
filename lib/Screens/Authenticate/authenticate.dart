import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Screens/Authenticate/register.dart';
import 'package:flutter_spike_a/Screens/Authenticate/sign_in.dart';
import 'register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  //toggles which option is shown in app bar up top
  //converse of whatever the actual page is
  bool showSignIn = true;

  //toggles the view
  void toggleView() {
    setState(() => {showSignIn = !showSignIn});
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn == true) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
