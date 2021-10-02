import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Screens/wrapper.dart';
import 'package:flutter_spike_a/Services/auth.dart';
import 'package:flutter_spike_a/constant.dart';
import 'package:flutter_spike_a/models/user.dart';
import 'Screens/Home/home_screen.dart';
// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //idiomatic

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<adkoUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
