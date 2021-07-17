import 'package:flutter/material.dart';
import 'package:sign_in_screen/screens/sign_in.dart';
import 'package:sign_in_screen/widgets/action_button.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/1.png')),
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(decoration: TextDecoration.none),
                children: [
                  TextSpan(
                      text: 'Growing your buisness is',
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  TextSpan(
                      text: ' easier ',
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue)),
                  TextSpan(
                      text: 'than you think!',
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('Sign Up takes only 2 minutes',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade600)),
            SizedBox(height: 60),

            // GET STARTED & SIGN BUTTON
            ActionButton(
              text: 'Get Started',
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 15),
            ActionButton(
                text: 'Sign in',
                buttonColor: Colors.grey.shade300,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
