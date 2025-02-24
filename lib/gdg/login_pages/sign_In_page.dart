import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/gdg/login_pages/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //Text controller
  //emial Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future SignIn() async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),  // Trim spaces
      password: _passwordController.text.trim(),
    );
  } on FirebaseAuthException catch (e) {
    print('Error: ${e.message}');  // Print exact error message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.message ?? "Authentication failed")),
    );
  }
}

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //Hello Envors
              children: [
                Icon(
                  Icons.gesture_rounded,
                  size: 100,
                ),

                SizedBox(
                  height: 100.0,
                ),
                Text(
                  'Green Tech',
                  //If you want to change the Font chnage Hare remove style Add
                  //google font's hare
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 46,
                  ),
                ),
                Text(
                  'Welcome to E-World',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 33.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 35.0,
                ),
                //email text Feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.email),
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //password text feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock_outlined),
                            border: InputBorder.none,
                            hintText: 'Password'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //sigin button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                      onTap: SignIn,
                    
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 29.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //not have account sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don\'t have an account ?  ',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 210.0,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            ' Text does not go to the next line and is displayed properly.',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: 'agreee with privacy policy',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0))
                    ],
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
