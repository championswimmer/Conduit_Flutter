import 'package:conduit/api/conduit/users.dart';
import 'package:conduit/models/user_request_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _LoginFormState extends State<LoginFragment> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  UserRequestUser user = UserRequestUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, 0),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Form(
        onChanged: () {
          debugPrint('Changed');
        },
        key: _formKey,
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
              onSaved: (val) {
                user.email = val;
              },
            ),
            TextFormField(
              textAlign: TextAlign.center,
              cursorColor: Colors.green[400],
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'password',
              ),
              onSaved: (val) {
                user.password = val;
              },
            ),
            FlatButton(
              child: Text("Login"),
              textColor: Colors.white,
              color: Colors.green[600],
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      style: BorderStyle.solid,
                      width: 2,
                      color: Colors.green[600]),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              onPressed: () {
                _formKey.currentState.save();
                loginUser(user).then((resp) {
                  Navigator.of(context).pushReplacementNamed('/');
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class LoginFragment extends StatefulWidget {
  @override
  State<LoginFragment> createState() => _LoginFormState();
}
