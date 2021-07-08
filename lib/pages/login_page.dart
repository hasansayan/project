import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlogindesign/utils/color.dart';

import 'package:flutterlogindesign/widgets/herder_container.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get onPressed => null;
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    var sett = IconButton(onPressed: onPressed, icon: Icon(Icons.settings));
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        child: Column(
          children: <Widget>[
            HeaderContainer(sett),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(
                        hint: "Username",
                        icon: Icons.account_circle_outlined,
                        a: false),
                    _textInput(hint: "Password", icon: Icons.vpn_key, a: true),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.centerRight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildTextButton(Icons.exit_to_app_outlined, "EXIT",
                            Colors.red[300]),
                        buildTextButton(
                            Icons.login_outlined, "LOGIN", Colors.green[300])
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton(
      IconData icon, String title, Color backgroundColor) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            minimumSize: Size(180, 50),
            primary: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: backgroundColor),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 5,
            ),
            Text(title)
          ],
        ));
  }

  Widget _textInput({controller, hint, icon, bool a}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1.0),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        obscureText: a,
        maxLength: 10,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(icon),
            labelText: hint,
            suffixIcon:
                IconButton(onPressed: onPressed, icon: Icon(Icons.security))),
      ),
    );
  }
}
