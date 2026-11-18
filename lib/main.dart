import 'package:flutter/material.dart';
import 'package:login_screen/Login_Screen.dart';
void main (){
  runApp(Myapp()
    
  );
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

