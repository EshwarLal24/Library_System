import 'package:flutter/material.dart';


class loginbutton extends StatelessWidget {
  const loginbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(125,45),
      ),
        child:const Text('Sign in',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
          ),

    );
  }
}
