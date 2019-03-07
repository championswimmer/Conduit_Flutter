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
                labelText: 'email',
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
            FlatButton(
              child: Text("Login"),
              textColor: Colors.white,
              color: Colors.green[600],
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  style: BorderStyle.solid,
                  width: 2,
                  color: Colors.green[600]
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              onPressed: () {
              },
            )
          ],
        ),
      ),
    );
  }
}
