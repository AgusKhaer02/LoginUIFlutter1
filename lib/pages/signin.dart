import 'package:contoh_login_ui/pages/signup.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isVisiblePassword = true;
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void _setVisibilityPassword() {
    setState(() {
      isVisiblePassword = !isVisiblePassword;
    });
    print(isVisiblePassword);
  }

  void _showLoginData(){
    print("Username : ${(txtUsername.text != "") ? txtUsername.text : "KOSONG" }");
    print("Password : ${(txtPassword.text != "") ? txtPassword.text : "KOSONG"}");
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
                  margin: EdgeInsets.symmetric(vertical: 100.0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 46,
                        color: colorPurple),
                  ),
                ),

                // Username text field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    maxLines: 1,
                    controller: txtUsername,
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
                    controller: txtPassword,
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
                      _showLoginData();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Login",
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

                // Forgot password button
                TextButton(
                  onPressed: () {
                    print("Forgot Password");
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                ),

                // SignUp button
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Don't have an account? Sign up here!",
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
