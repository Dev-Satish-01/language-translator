import 'package:flutter/material.dart';
import 'package:translation_app/pages/home.dart';
import 'package:translation_app/pages/page 2.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/':(context)=> page(),
    '/':(context) => Splash(),
  },
));

