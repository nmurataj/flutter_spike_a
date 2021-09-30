import 'package:flutter/material.dart';

import '../constant.dart';

class sign_up_button extends StatelessWidget {
  const sign_up_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          "Sign Up".toUpperCase(),
          style: TextStyle(
            color: kTertiaryColorL,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: kSecondaryColorL,
          minimumSize: Size(25, 70),
          shadowColor: const Color.fromRGBO(0, 0, 0, 1),
          textStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
