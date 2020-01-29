import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: new TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  // controller: _controllerEmail,
                  // focusNode: _usernameFocus,
                  onFieldSubmitted: (term) {
                    // _fieldFocusChange(context, _usernameFocus, _passwordFocus);
                  },
                  decoration: InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  ),
                  // onSaved: (value) => this.userData.email = value,
                  // validator: this._validateUsername,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: new TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  // focusNode: _passwordFocus,
                  // controller: _controllerPassword,
                  decoration: InputDecoration(
                    hintText: '********',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  ),
                  onFieldSubmitted: (term) {
                    // _passwordFocus.unfocus();
                  },
                  obscureText: true,
                  // onSaved: (value) => this.userData.password = value,
                  // validator: this._validatePassword,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/stockpage");
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(215, 215, 215, 1),
                      borderRadius: BorderRadius.all(Radius.circular(80.0))),
                  padding: const EdgeInsets.fromLTRB(70, 12, 70, 12),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(20, 94, 26, 1),
    );
  }
}
