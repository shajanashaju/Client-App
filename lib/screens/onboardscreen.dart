import 'package:auto_route/auto_route.dart';
import 'package:clientapp/context.dart';
import 'package:clientapp/screens/BottomNavigationTabs/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../router/router.gr.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

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
                height: context.sW() / 4,
              ),
              Center(child: Image.asset('assets/images/onboardng.png')),
              SizedBox(
                height: context.sW() / 8,
              ),
              Center(
                child: Text(
                  'Contiune as?',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              SizedBox(
                height: context.sW() / 20,
              ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(BottomNavigationRoute());
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
                        Text('Show Admin',
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
              Center(
                child: Text(
                  'Or',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: context.sW() / 40,
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
                      // color: Theme.of(context).primaryColor,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(18)),

                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.sW() / 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Executive',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontSize: 14,
                                  color: Theme.of(context).primaryColor,
                                )),
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
            ],
          ),
        ),
      ),
    );
  }
}
