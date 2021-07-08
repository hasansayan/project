import 'package:flutter/material.dart';
import 'package:flutterlogindesign/utils/color.dart';

class HeaderContainer extends StatelessWidget {
  IconButton icon = new IconButton(
    icon: Icon(Icons.settings),
    onPressed: () {},
  );

  HeaderContainer(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1.0),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          gradient: LinearGradient(
              colors: [firstColor, secondColor],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 15,
              right: 0.5,
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              )),
          Padding(
            padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
            child: Image.asset("assets/logo.png"),
          )
        ],
      ),
    );
  }
}
