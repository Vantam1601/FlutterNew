import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/validations/signin_validation.dart';
import 'package:flutter_app/validations/signup_validation.dart';
import 'package:flutter_app/widgets/sign_up_form.dart';
import 'package:flutter_app/widgets/social_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
import 'package:flutter_app/widgets/login_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  //Neu muon show  sign up thi _isShowSignUp = true;
  bool _isShowSignUp = false;
  late AnimationController _animationController;
  late Animation<double> _animationTextRotate;

  void setUpAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: defaultDuration);
    _animationTextRotate =
        Tween<double>(begin: 0, end: 90).animate(_animationController);
  }

  void updateView() {
    setState(() {
      _isShowSignUp = !_isShowSignUp;
    });
    _isShowSignUp
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignInValidation()),
        ChangeNotifierProvider(create: (_) => SignUpValidation())
      ],
      child: Scaffold(
          body: AnimatedBuilder(
              animation: _animationController,
              builder: (context, _) {
                return Stack(
                  children: [
                    AnimatedPositioned(
                      duration: defaultDuration,
                      width: _size.width * 0.88,
                      height: _size.height,
                      left: _isShowSignUp ? -_size.width * 0.76 : 0,
                      child: Container(
                        color: login_bg,
                        child: LoginForm(),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultDuration,
                      height: _size.height,
                      width: _size.width * 0.88,
                      left: _isShowSignUp
                          ? _size.width * 0.12
                          : _size.width * 0.88,
                      child: Container(
                        color: signup_bg,
                        child: SignUpForm(),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultDuration,
                      top: _size.height * 0.1,
                      left: 0,
                      right: _isShowSignUp
                          ? -_size.width * 0.06
                          : _size.width * 0.06,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white60,
                        child: AnimatedSwitcher(
                          duration: defaultDuration,
                          child: _isShowSignUp
                              ? SvgPicture.asset(
                                  logo_svg,
                                  color: signup_bg,
                                )
                              : SvgPicture.asset(
                                  logo_svg,
                                  color: login_bg,
                                ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultDuration,
                      width: _size.width,
                      bottom: _size.height * 0.1,
                      right: _isShowSignUp
                          ? -_size.width * 0.06
                          : _size.width * 0.06,
                      child: SocialButton(),
                    ),
                    // Login widget
                    AnimatedPositioned(
                      duration: defaultDuration,
                      bottom:
                          _isShowSignUp ? _size.width / 2 : _size.height * 0.3,
                      left: _isShowSignUp ? 0 : _size.width * 0.44 - 80,
                      child: AnimatedDefaultTextStyle(
                        duration: defaultDuration,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: _isShowSignUp ? 20 : 32,
                          fontWeight: FontWeight.bold,
                          color: _isShowSignUp ? Colors.white : Colors.white70,
                        ),
                        child: Transform.rotate(
                          angle: -_animationTextRotate.value * pi / 180,
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              if (_isShowSignUp) {
                                updateView();
                              } else {
                                //Login
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.85),
                              width: 160,
                              child: Text(
                                "Login".toUpperCase(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Sign Up widget
                    AnimatedPositioned(
                      duration: defaultDuration,
                      bottom:
                          !_isShowSignUp ? _size.width / 2 : _size.height * 0.3,
                      right: _isShowSignUp ? _size.width * 0.44 - 80 : 0,
                      child: AnimatedDefaultTextStyle(
                        duration: defaultDuration,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: !_isShowSignUp ? 20 : 32,
                          fontWeight: FontWeight.bold,
                          color: _isShowSignUp ? Colors.white : Colors.white70,
                        ),
                        child: Transform.rotate(
                          angle: (90 - _animationTextRotate.value) * pi / 180,
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              if (_isShowSignUp) {
                                //Sign Up
                              } else {
                                updateView();
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding * 0.85),
                              width: 160,
                              child: Text(
                                "Sign Up".toUpperCase(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
