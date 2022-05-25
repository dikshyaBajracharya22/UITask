import 'package:assignment/custom_button.dart';
import 'package:assignment/sign_in.dart';
import 'package:assignment/sign_up.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 160,
              // width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/logo.png"),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
              text: "Sign In",
              onTapped: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SignInPage();
                }));
              },
            ),
            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 374,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff863CC3),
                width: 2
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: OutlinedButton(        
                    
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SignUpPage();
                }));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xff863CC3),
                        fontSize: 15,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
