import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemyclone/Services/Authentication.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Authentication authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: FlatButton.icon(
                  color: Colors.white,
                  onPressed: () async {
                    await authentication.googleSignIn();
                  },
                  icon: Icon(EvaIcons.google),
                  label: Text('Sign in with google'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: FlatButton.icon(
                  color: Colors.white,
                  onPressed: () {
                    print('hiiii');
                  },
                  icon: Icon(EvaIcons.facebook),
                  label: Text('Sign in with facebook'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: FlatButton.icon(
                  color: Colors.white,
                  onPressed: () {
                    print('hiiii');
                  },
                  icon: Icon(FontAwesomeIcons.apple),
                  label: Text('Sign in with apple'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 100,
                ),
                child: Row(
                  children: [
                    Text(
                      'New here?',
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: SignUp(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Text(
                        'create an account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/udemy.png'),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)),
        ),
      ),
    );
  }
}
