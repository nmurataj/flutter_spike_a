import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Services/auth.dart';
import 'package:flutter_spike_a/constant.dart';
import 'package:flutter_spike_a/Services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({required this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColorL,
        elevation: 0.5,
        title: Text("Sign up on adko for Brands"),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () => {widget.toggleView()},
            icon: Icon(Icons.person),
            label: Text("Sign In"),
          ),
        ],
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val!.isEmpty ? "Enter an email" : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) =>
                    val!.length < 6 ? "Enter a password 6+ chars long" : null,
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
                  if (_formKey.currentState!.validate()) {}
                },
                child: Text(
                  "Register",
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
