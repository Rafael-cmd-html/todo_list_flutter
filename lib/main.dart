import 'package:flutter/material.dart';
import 'package:todo_list/src/login.dart';
import 'package:todo_list/src/forgot_password.dart';
import 'package:todo_list/src/reset_password.dart';
import 'package:todo_list/src/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'A-bee-nturas', home: MyAppForm());
  }
}
