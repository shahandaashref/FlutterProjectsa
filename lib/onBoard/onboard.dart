import 'package:flutter/material.dart';
import 'package:my_flutter_app/onboard/frist_screen.dart';
import 'package:my_flutter_app/onboard/second_screen.dart';
import 'package:my_flutter_app/onboard/third_screen.dart';
import 'package:my_flutter_app/onboard/login_screen.dart';


class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController _controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // PageView
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              controller: _controller,
              children: const [
                FristScreen(),
                SecondScreen(),
                ThirdScreen(),
                LoginScreen(), // صفحة الـ Login
              ],
            ),
          ),

          // Indicators and Buttons (Appear only for first 3 pages)
          if (index < 3)
            Column(
              children: [
                // Indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIndicator(active: index == 0),
                    const SizedBox(width: 6),
                    CustomIndicator(active: index == 1),
                    const SizedBox(width: 6),
                    CustomIndicator(active: index == 2),
                  ],
                ),

                // Buttons
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          if (index == 2) {
                            _controller.jumpToPage(3); // Navigate to Login
                          } else {
                            _controller.animateToPage(
                              index + 1,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                        child: Text(
                          index == 2 ? "Register" : "Skip",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 17, 119, 135),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (index == 2) {
                            _controller.jumpToPage(3); // Navigate to Login
                          } else {
                            _controller.animateToPage(
                              index + 1,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 119, 135),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            index == 2 ? "Login" : "Next",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final bool active;

  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: active
            ? const Color.fromARGB(255, 17, 119, 135)
            : Colors.grey,
        borderRadius: BorderRadius.circular(100),
      ),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}
