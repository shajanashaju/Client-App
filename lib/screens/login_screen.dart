import 'package:auto_route/auto_route.dart';
import 'package:clientapp/context.dart';
import 'package:clientapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;
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
                height: context.sW() / 7,
              ),
              Center(child: Image.asset('assets/images/loginscreenbg.png')),
              SizedBox(
                height: context.sW() / 10,
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
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
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
                        Text('Login',
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
                    'New One ?',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(SignUpScreenRoute());
                    },
                    child: Text(
                      'SIGN UP',
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
