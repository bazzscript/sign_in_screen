import 'package:flutter/material.dart';

TextStyle style = TextStyle(fontSize: 20.0);

final emailField = TextField(
  obscureText: false,
  style: style,
  decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Email",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
);
final passwordField = TextField(
  obscureText: true,
  style: style,
  decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Password",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
);
