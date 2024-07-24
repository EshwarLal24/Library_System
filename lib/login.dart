import 'package:flutter/material.dart';
import 'package:admin_dashboard_app/loginButton.dart';
import 'package:admin_dashboard_app/textField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height:100),

                Image.asset('assets/review.png',
                  height: 100,
                  width: 100,) ,
                const Text('AJRAK CLUB LMS',
                  style: TextStyle(

                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),

                ),
                const SizedBox(height: 45),
                const Text('Login',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 17),

                const loginfield(hintText:"username"
                ),

                const SizedBox(height: 20),
                const loginbutton(),


              ],
            ),
          ),
        ),
        backgroundColor: Colors.white10
    );
  }
}

