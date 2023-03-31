import 'package:flutter/material.dart';
import 'package:untitled/modules/bmi_results/bmi_result_screen.dart';
import 'package:untitled/modules/bmi/bmi_screen.dart';
import 'package:untitled/modules/home/home_screen.dart';
import 'package:untitled/modules/login/login_screen.dart';
import 'package:untitled/modules/messenger_screen/massenger_screen.dart';
import 'package:untitled/modules/users/users_model.dart';

import 'layout/home_layout.dart';
import 'modules/counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

// Statless Widget
// Statfull Widget

// class MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
