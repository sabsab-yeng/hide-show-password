import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Create handle password
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Image.asset("images/sabsab.png"),
            SizedBox(
              height: 40,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration:
                  InputDecoration(hintText: "Email", labelText: "Email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: _obscureText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                  child: Text("Login"),
                  onPressed: () {},
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ))
          ],
        ),
      ),
    );
  }
}
