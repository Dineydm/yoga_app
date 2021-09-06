import 'package:flutter/material.dart';
import '/models/course.dart';
import '/constants/constants.dart';
import '/data/data.dart';

class ListCourses extends StatelessWidget {
  const ListCourses({Key? key}) : super(key: key);

  _buildCourses(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Course course = courses[index];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: appPadding / 2,
      ),
      child: Container(
        height: size.height * .2,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(.3),
              blurRadius: 30,
              offset: Offset(10, 15),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(appPadding),
          child: Row(
            children: [
              Container(
                width: size.width * .3,
                height: size.height * .2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(course.imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size.width * .4,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: appPadding / 2, top: appPadding / 1.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.name!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        maxLines: 2,
                      ),
                      SizedBox(height: size.height * .01),
                      Row(
                        children: [
                          Icon(
                            Icons.folder_open_rounded,
                            color: black.withOpacity(.3),
                          ),
                          SizedBox(width: size.width * .01),
                          Text(
                            course.students!,
                            style: TextStyle(
                              color: black.withOpacity(.3),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: size.height * .01),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: black.withOpacity(.3),
                          ),
                          SizedBox(width: size.width * .01),
                          Text(
                            course.time.toString() + ' min',
                            style: TextStyle(
                              color: black.withOpacity(.3),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(appPadding, 0, appPadding, appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Courses',
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
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return _buildCourses(context, index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
