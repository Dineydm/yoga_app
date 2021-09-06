import 'package:flutter/material.dart';
import '/constants/constants.dart';
import '/data/data.dart';
import '/models/Style.dart';

class DiffStyles extends StatelessWidget {
  const DiffStyles({Key? key}) : super(key: key);

  _buildStyles(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Style style = styles[index];

    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
          child: Container(
            margin:
                EdgeInsets.only(top: appPadding * 3, bottom: appPadding * 2),
            width: size.width * .4,
            height: size.height * .2,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(100),
              ),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(.3),
                  blurRadius: 20,
                  offset: Offset(5, 15),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding / 2,
                    right: appPadding * 3,
                    top: appPadding,
                  ),
                  child: Text(
                    style.name!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: appPadding / 2,
                    right: appPadding / 2,
                    bottom: appPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: black.withOpacity(.3),
                          ),
                          SizedBox(width: size.width * .01),
                          Text(
                            style.time.toString() + ' min',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: black.withOpacity(.3),
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.add,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Positioned(
            right: 0,
            top: 0,
            child: Image(
              width: size.width * .3,
              height: size.height * .2,
              image: AssetImage(style.imageUrl!),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'For Beginner',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 24,
                  color: primary,
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: appPadding / 2),
          child: Container(
            height: size.height * .33,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: styles.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildStyles(context, index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
