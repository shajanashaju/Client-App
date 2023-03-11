import 'dart:ffi';

import 'package:clientapp/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  double percentage_text = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: context.sW() / 2.5,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.sW() / 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Container(
                    height: context.sW() / 10,
                    width: context.sW() / 5,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.sW() / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/filter.svg',
                            fit: BoxFit.none,
                          ),
                          Text(
                            'Filter',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Jan 10, 2023',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 14, color: Colors.grey, height: 1),
                  ),
                  SizedBox(
                    width: context.sW() / 15,
                    height: context.sW() / 23,
                    child: SvgPicture.asset(
                      'assets/icons/calendar.svg',
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: context.sW() / 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: context.sW() / 8,
                width: context.sW(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 221, 221, 221),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.sW() / 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: context.sW() / 12,
                        child: Container(
                          height: context.sW() / 4,
                          width: context.sW() / 5,
                          decoration: BoxDecoration(
                              color: const Color(0xFF03BB2A),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '12 Orders',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return Stack(
                                  children: [
                                    AlertDialog(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.0))),
                                      content: Container(
                                        height: context.sW() / 1.9,
                                        child: Column(
                                          children: [
                                            Text('Currently Running',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            const Divider(),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            Text('Pending To Deliver',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            const Divider(),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            Text('Requests',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            const Divider(),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            Text('Return',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            const Divider(),
                                            SizedBox(
                                              height: context.sW() / 40,
                                            ),
                                            Text('Successfully Delivered',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: context.sW() / 8,
                                      // bottom: context.sW(),
                                      top: context.sW() / 1.6,
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          width: context.sW() / 10,
                                          height: context.sW() / 10,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Icon(
                                              Icons.close,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Row(
                          children: [
                            Text(
                              'Currently Running',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                              size: 22,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
        child: Column(
          children: [
            SizedBox(
              height: context.sW() / 40,
            ),
            LaundryIdList(
              percentage_text: percentage_text,
              laundry_id: 'ld:#1234',
              laundry_list: 'Washing, Dry Cleaning, Ironing',
              laundry_rate: '\$ 30.00',
              due_date: 'Due Date:Jan 13,2023',
            ),
            LaundryIdList(
              percentage_text: percentage_text,
              laundry_id: 'ld:#1234',
              laundry_list: 'Washing, Dry Cleaning, Ironing',
              laundry_rate: '\$ 30.00',
              due_date: 'Due Date:Jan 13,2023',
            )
          ],
        ),
      ),
    );
  }
}

class LaundryIdList extends StatelessWidget {
  LaundryIdList(
      {super.key,
      required this.percentage_text,
      required this.laundry_id,
      required this.laundry_list,
      required this.laundry_rate,
      required this.due_date});

  final double percentage_text;
  String laundry_id;
  String laundry_list;
  String laundry_rate;
  String due_date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.sW() / 3,
      width: context.sW(),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 221, 221, 221),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.sW() / 50, vertical: context.sW() / 40),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.sW() / 60,
                ),
                Text(
                  laundry_id,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 14,
                      ),
                ),
                SizedBox(
                  height: context.sW() / 60,
                ),
                SizedBox(
                  width: context.sW() / 2.5,
                  child: Text(
                    laundry_list,
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: context.sW() / 60,
                ),
                Container(
                  height: context.sW() / 13,
                  width: context.sW() / 6,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 135, 110, 226),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      laundry_rate,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: context.sW() / 20,
                ),
                CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 6,
                  // percent: 0.5,
                  percent: percentage_text / 100,
                  center: Text(
                    "${percentage_text.toString()} %",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  progressColor: Colors.green,
                ),
                Text(
                  due_date,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
