import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisiblePassword = true;

  void _setVisibilityPassword() {
    setState(() {
      isVisiblePassword = !isVisiblePassword;
    });
    print(isVisiblePassword);
  }

  Color colorPurple = Color(0xFF7442C8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // mendorong widget2 yang lainnya ke dalam supaya tidak menutupi notification bar
      body: SafeArea(
        // memberi efek scroll, dan mengatasi overflow error
        child: SingleChildScrollView(
          // set widgetnya ketengah
          child: Center(
            // atur posisi widget2nya ketengah
            child: Column(
              children: [

                // Jumbo title
                Container(
                  margin: EdgeInsets.symmetric(vertical: 80.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 46,
                        color: colorPurple),
                  ),
                ),

                // Fullname text field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Full Name",
                    ),
                  ),
                ),

                // Spacer
                SizedBox(
                  height: 20.0,
                ),

                // Email text field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                ),

                // Spacer
                SizedBox(
                  height: 20.0,
                ),

                // Username text field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Username",
                    ),
                  ),
                ),

                // Spacer
                SizedBox(
                  height: 20.0,
                ),

                // Password text field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    obscureText: isVisiblePassword,
                    maxLines: 1,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            _setVisibilityPassword();
                          },
                          icon: Icon(Icons.remove_red_eye),
                        )),
                  ),
                ),

                // Spacer
                SizedBox(
                  height: 40.0,
                ),

                // Login button
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Login");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(colorPurple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                ),

                // SignUp button
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Already have an account? Sign In Here!",
                    style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
