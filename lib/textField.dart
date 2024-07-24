import 'package:flutter/material.dart';

class loginfield extends StatelessWidget {
  final String hintText;

  const loginfield({Key? key,  required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
      child: TextField(
        style: TextStyle(fontSize: 12),
        decoration: InputDecoration(
          hintText: "Password",
          border: new OutlineInputBorder(
            borderSide: new BorderSide(
              color: Colors.grey,
            ),
          ),
          prefixIcon: const Icon(
            Icons.password,
            color: Colors.grey,
          ),

        ),
        ),

      );

  }
}
