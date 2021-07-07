import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minorproject/pages/Home.dart';
import 'package:minorproject/pages/loginAndRegister.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

void main() {

  runApp(MaterialApp(
    home: LoginAndRegister(),
    debugShowCheckedModeBanner: false,
  ));
}

