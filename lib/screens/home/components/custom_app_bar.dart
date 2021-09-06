import 'dart:math';

import 'package:flutter/material.dart';
import '/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: appPadding, right: appPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(appPadding / 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(appPadding / 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(appPadding / 8),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/propic.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * .01,
              ),
              Text(
                'Tamara Bellis',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              )
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Icon(Icons.notifications_none_rounded, size: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(appPadding / 5),
                      child: Text(
                        '0',
                        style: TextStyle(color: white, fontSize: 8),
                      ),
                    ),
                  ),
                ],
              ),
              Transform(
                  transform: Matrix4.rotationY(pi),
                  alignment: Alignment.center,
                  child: Icon(Icons.sort_rounded, size: 30))
            ],
          ),
        ],
      ),
    );
  }
}
