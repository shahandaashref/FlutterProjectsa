import 'package:flutter/material.dart';
import 'package:my_flutter_app/Constant.dart';
import 'package:my_flutter_app/onBoard/otp_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Positioned(
                        top: -40,
                        right: 20,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(162, 46, 132, 135),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: maincolor,
                  ),
                ),
                Image.asset("images/complete.jpg", height: 300),
                      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: maincolor.withOpacity(0.1),
                  filled: true,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: maincolor,
                  ),
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }
                  // Optional: Check if the entered text is a valid email.
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return "Please enter a valid email address";
                  }
                  return null;
                },
              ),
            ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: ()  {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, navigate to the verification screen.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerficationScreen()),
                  );
                }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: maincolor,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                  width: 340,
                  child: Text("Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(height: 15),
                Text(
                  "Or sign in using",
                  style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 8, 46, 52)),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/facebook.png",width: 40,),
                      iconSize: 40,
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/gmail.png",width: 40,),
                      iconSize: 40,
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/twitter.png",width: 40,),
                      iconSize: 40,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        // Navigate to Sign Up screen
                      },
                      child: Text("Sign Up now"),
                    ),
                  ],
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
