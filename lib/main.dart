import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/view/sign_log/sigulogin.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}
