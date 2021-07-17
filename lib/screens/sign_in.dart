import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_in_screen/widgets/action_button.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: 5),
                Image(image: AssetImage('images/2.png')),
                SizedBox(height: 10),
                Text('Welcome back!',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                SizedBox(height: 10),
                Text("You've been missed",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade600)),
                SizedBox(height: 18),

                // SIGN IN TO GOOGLE BUTON
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: EdgeInsets.all(9),
                        primary: Colors.grey.shade200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 27,
                          child: SvgPicture.string(
                              '<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 48 48" width="48px" height="48px"><path fill="#FFC107" d="M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12c0-6.627,5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24c0,11.045,8.955,20,20,20c11.045,0,20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z"/><path fill="#FF3D00" d="M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z"/><path fill="#4CAF50" d="M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36c-5.202,0-9.619-3.317-11.283-7.946l-6.522,5.025C9.505,39.556,16.227,44,24,44z"/><path fill="#1976D2" d="M43.611,20.083H42V20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571c0.001-0.001,0.002-0.001,0.003-0.002l6.19,5.238C36.971,39.205,44,34,44,24C44,22.659,43.862,21.35,43.611,20.083z"/></svg>'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign in With Google',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )
                      ],
                    )),
                SizedBox(height: 5),

                // THE OR DIVIDER
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                ]),
                SizedBox(height: 5),

                // EMAIL AND PASSWORD INPUTS
                TextField(
                  obscureText: false,
                  // style: TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: "Enter Your Email",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                        // borderRadius: BorderRadius.circular(8.0),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                        // borderRadius: BorderRadius.circular(8.0),
                        ),
                  ),
                ),
                SizedBox(height: 10),

                // Password
                TextField(
                  obscureText: _isHidden,

                  // style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: "Enter Your Password",
                    suffix: InkWell(
                      onTap: _togglPasswordVisibility,
                      child: _isHidden
                          ? Icon(Icons.visibility, size: 16)
                          : Icon(Icons.visibility_off, size: 16),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                        // borderRadius: BorderRadius.circular(8.0),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)
                        // borderRadius: BorderRadius.circular(8.0),
                        ),
                  ),
                ),
                SizedBox(height: 15),

                // THE BLACK SIGN IN BUTTON
                ActionButton(
                  text: 'Sign in',
                  buttonColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(height: 15),

                // THE LAST TEXT ON THE SIGN IN SCREEN
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(decoration: TextDecoration.none),
                        children: [
                          TextSpan(
                              text: 'Dont have an account? ',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: ' Sign Up here',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ))
                        ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglPasswordVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
