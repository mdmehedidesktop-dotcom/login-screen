import 'package:flutter/material.dart';
import 'package:login_screen/Custom_Page/Custom_button.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body: Padding(padding:EdgeInsetsGeometry.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Welcome To Login Page",style: TextStyle(fontSize: 20),),
                   Text("Login your account",style: TextStyle(fontSize: 14,color: Colors.grey),)
                 ],
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(color: Colors.orange,shape: BoxShape.circle),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(30),
                   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPujeItlYVoZuZ-P7A-pgn8BCTl3i-HboHRV9eEiWP8A&s",
                   height: 50,
                   width: 50,),
                 ),
               )
             ],
           ),
            SizedBox(height:60 ,),
            MyTextField(email: TextEditingController(), hint: "Enter Email", mLine: 1, icon: Icons.email,suffixIcon: null,),
            SizedBox(height: 10,),
            MyTextField(email: TextEditingController(), hint: "Enter password", mLine: 1, icon: Icons.lock, suffixIcon: Icons.remove_red_eye),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot password ?",style: TextStyle(color: Colors.deepOrangeAccent),)
              ],
            ),
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                focusColor: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("Login",style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
              ),
            ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not Registered? ",),
                  SizedBox(width: 5,),
                  InkWell(
                      onTap: (){},
                      child: Text("Register",style: TextStyle(color: Color(0XFF825CF7)),))
                ],
              ),
            Divider(color: Colors.black87,),

          ],
        ),
      ),
      ),
    );

  }
}
