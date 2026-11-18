import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
   MyTextField({super.key,
    required this.email,required this.hint,required this.mLine,
     required this.icon, required this.suffixIcon,

  });
  TextEditingController email ;
  String hint ;
  int? mLine;
  final IconData?icon ;
  final IconData? suffixIcon ;



  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(9.0),
    child: TextField(
      maxLines: mLine??1,
      controller: email,
      decoration: InputDecoration(
        labelText: hint,
        suffixIcon: suffixIcon != null ?Icon(suffixIcon):null,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
    ),
    );
  }
}
