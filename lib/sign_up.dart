import 'package:assignment/custom_button.dart';
import 'package:assignment/custom_login.dart';
import 'package:assignment/sign_in.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFFFFFF),
          leading: Padding(
            padding: EdgeInsets.only(left: 8.7, top: 7.5),
            child: IconButton(
              color: Color(0xff1D1D1D),
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 16,
              focusColor: Color(0xff1D1D1D),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 45),
              child: CustomLogin(topText: "Sign Up", 
              subText: "Register your account",
              firstDetail: "Full Name",
              asterick: "*",
              firsttextFieled: "Enter your full name", 
              secondDetail: "Email Id",
              secondtextFieled: "Enter your email id",
              thirdDetail: "Password",
              thirdtextFieled: "Enter your password",
              fourthDetail: "Confirm Password",
              fourthtextFieled: "Enter your password again",
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                     return SignInPage();
                    }));
              },
              child: CustomButton(text: "Setup")),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(fontSize: 14,letterSpacing: 0.5, color: Color(0xff1D1D1D,), fontWeight: FontWeight.w400),),
                InkWell(
                  onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                     return SignInPage();
                    }));
                  },
                  child: Text("  Sign In", style: TextStyle(fontSize: 14,letterSpacing: 0.5, color: Color(0xff863CC3), fontWeight: FontWeight.w700)))
              ],
            )
          ],
        ),
      ),
      
    );
  }
}
