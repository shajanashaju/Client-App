import 'package:auto_route/auto_route.dart';
import 'package:clientapp/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../router/router.gr.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordVisible = false;
  bool light = true;
  bool dark = true;
  bool medium = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.sW() / 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.sW() / 8,
              ),
              Text(
                'Logo.',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              SizedBox(
                height: context.sW() / 15,
              ),
              Center(child: Image.asset('assets/images/signupbg.png')),
              SizedBox(
                height: context.sW() / 20,
              ),
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  labelText: "User Name",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
                // textInputAction: TextInputAction.go,
                // controller: TextEditingController()..text = 'U laundry',
                // onChanged: (text) => {},
              ),
              SizedBox(
                height: context.sW() / 50,
              ),
              TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  // border: UnderlineInputBorder(),
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                  hintText: "Password",
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  // helperText: "Password must contain special character",
                  // helperStyle: TextStyle(color: Colors.green),
                  suffixIcon: IconButton(
                    color: Colors.grey,
                    iconSize: 20,
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                  // filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: context.sW() / 50,
              ),
              TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  // border: UnderlineInputBorder(),
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  // helperText: "Password must contain special character",
                  // helperStyle: TextStyle(color: Colors.green),
                  suffixIcon: IconButton(
                    color: Colors.grey,
                    iconSize: 20,
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                  // filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),

              // TextField(
              //   cursorColor: Colors.grey,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     labelText: "Password",
              //     labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
              //     prefixIcon: IconButton(
              //       icon: Icon(
              //         Icons.person_outline,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       onPressed: () {},
              //     ),
              //     suffixIcon: IconButton(
              //       icon: Icon(
              //         Icons.person_outline,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       onPressed: () {},
              //     ),
              //   ),
              // textInputAction: TextInputAction.go,
              // controller: TextEditingController()..text = 'U laundry',
              // onChanged: (text) => {},
              SizedBox(
                height: context.sW() / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Save Password',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 112, 182, 79)),
                  ),
                  Switch(
                    value: medium,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        medium = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: context.sW() / 8,
              ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(OnBoardScreenRoute());
                },
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: context.sW() / 30),
                  height: context.sW() / 8,
                  width: context.sW(),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.sW() / 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontSize: 14, color: Colors.white)),
                        SvgPicture.asset(
                          'assets/icons/arrow.svg',
                          height: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.sW() / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Member ?',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(LoginScreenRoute());
                    },
                    child: Text(
                      'LOGIN',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
