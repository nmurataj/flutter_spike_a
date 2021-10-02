import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Screens/Components/app_bar.dart';
import 'package:flutter_spike_a/Services/auth.dart';
import 'package:flutter_spike_a/constant.dart';
import 'authenticate.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({required this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  //text field state
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColorL,
        elevation: 0.5,
        title: Text("Sign in to adko for Brands"),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () => {widget.toggleView()},
            icon: Icon(Icons.person),
            label: Text("Register"),
          ),
        ],
      ),
      body: Container(
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => password = val);
                },
                obscureText: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  print(email);
                  print(password);
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(color: kTertiaryColorL),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
