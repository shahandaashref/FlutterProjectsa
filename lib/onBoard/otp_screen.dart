import 'package:flutter/material.dart';
import 'package:my_flutter_app/Constant.dart';
import 'package:my_flutter_app/onBoard/complete_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerficationScreen extends StatefulWidget {
  const VerficationScreen({super.key});

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  final TextEditingController _pinController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _verifyOtp() {
    if (_formKey.currentState!.validate()) {
      // الانتقال إلى الشاشة التالية إذا كان الإدخال صحيحًا
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CompleteScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- Text top --- //
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, color: maincolor),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Verification",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset("images/vrifcation.jpg", height: 250),
            const SizedBox(height: 20),
            Text(
              "Enter the verification code sent to \n your email:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: maincolor,
                height: 1.5, // تحسين المسافة بين السطور
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    PinCodeTextField(
                      appContext: context,
                      length: 6,
                      controller: _pinController,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter the OTP";
                        }
                        return null;
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: maincolor.withOpacity(0.2),
                        selectedFillColor: maincolor.withOpacity(0.1),
                        inactiveFillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        print("Resending OTP...");
                      },
                      child: Text(
                        "Resend code",
                        style: TextStyle(
                          fontSize: 15,
                          color: maincolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: _verifyOtp,
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
                    "Verify",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            // --- Bottom Circle --- //
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Positioned(
                    bottom: -40,
                    left: -10,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(162, 46, 132, 135),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
