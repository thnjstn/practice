import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: 
      Stack(
        children: [
          _outsideBox(),
          SafeArea(
            child: Center(
              child: Column(children: [
                const SizedBox(height: 200,),
                //login
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Divider(
                  color: Color(0xffFF8A03),
                  thickness: 7,
                  indent: 140,
                  endIndent: 140,
                ),
                const SizedBox(height: 30,),
                _loginContainer(),
              ],),
            ),
          ),
        ],
      )
    );
  }

  Container _loginContainer() {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: const Color(0xffFFD39F),
                ),
                width: 350,
                height: 390,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text(
                          'username',
                          style: TextStyle(
                            color: Color(0xff5F5A5A),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image(image: AssetImage('assets/icons/user.png')),
                      ],),
                      const Divider(color: Colors.black,),
                      const SizedBox(height: 50,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text(
                          'password',
                          style: TextStyle(
                            color: Color(0xff5F5A5A),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image(image: AssetImage('assets/icons/lock.png')),
                        ],
                      ),
                      const Divider(color: Colors.black,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Color(0xffFF8A03),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 60,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: const Color(0xffFF8A03),
                        ),
                        width: 294,
                        height: 68,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
  }

  Transform _outsideBox() {
    return Transform.rotate(
          angle: -math.pi / 4.5,
          child: FractionalTranslation(
            translation: Offset(-0.6, -0.5),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffFF8A03),
              ),
              width: 500,
              height: 200,
            ),
          ),
        );
  }
}