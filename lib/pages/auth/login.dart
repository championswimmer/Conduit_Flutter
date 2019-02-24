
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, 0),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Form(
        onChanged: () {
          debugPrint('Changed');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              textAlign: TextAlign.center,
              cursorColor: Colors.green[400],
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'username',
              ),
            ),
            TextFormField(
              textAlign: TextAlign.center,
              cursorColor: Colors.green[400],
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'password',
              ),
            ),

          ],
        ),
      ),
    );
  }

}