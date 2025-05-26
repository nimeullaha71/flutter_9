import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttter_9/ui/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
             Text(
              'Get Started With',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                )),
            const SizedBox(height: 32,),

            Center(
              child: Column(
                children: [
                  TextButton(onPressed: _onTapForgotPassword, child: const Text('Forgot Password?')),
                  RichText(text: TextSpan(
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                    ),
                    children: [TextSpan(
                      text: "Don't have account ?"
                    ),
                      TextSpan(text: "Sign In",style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap=_onTapSignInButton,
                      ),
                    ]
                  )),
                ],
              ),
            )

          ],
        ),
      ),
    ));
  }



  void _onTapForgotPassword(){}


  void _onTapSignInButton(){}



}
