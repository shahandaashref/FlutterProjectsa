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
        child: Column(
          children: [
            // --- Circle on the right top --- //
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Stack(alignment: Alignment.topRight, children: [
                Positioned(
                  top: -40,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(162, 46, 132, 135),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ]),
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
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
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, navigate to the verification screen.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerficationScreen()),
                  );
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: maincolor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "OR Login With ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: maincolor,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/facebook.png", height: 20),
                const SizedBox(width: 20),
                Image.asset("images/gmail.png", height: 20),
                const SizedBox(width: 20),
                Image.asset("images/twitter.png", height: 20),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Don't have an account? Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: maincolor,
              ),
            ),
            const Spacer(),
            // --- Circle on the left bottom --- //
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Positioned(
                  bottom: -40,
                  left: -20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(162, 46, 132, 135),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
