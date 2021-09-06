import 'package:flutter/material.dart';
import '/screens/home/home_screen.dart';
import '/constants/constants.dart';

class LoginCredentials extends StatelessWidget {
  const LoginCredentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Please Log In', style: TextStyle(fontSize: 24)),
          SizedBox(
            height: size.height * .03,
          ),
          Material(
            elevation: 10,
            color: white,
            borderRadius: BorderRadius.circular(30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(
                  vertical: appPadding * .75,
                  horizontal: appPadding,
                ),
                fillColor: white,
                hintText: 'Email',
                suffix: Icon(
                  Icons.email_outlined,
                  size: 25,
                  color: black.withOpacity(.4),
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * .04),
          Material(
            elevation: 10,
            color: white,
            borderRadius: BorderRadius.circular(30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(
                  vertical: appPadding * .75,
                  horizontal: appPadding,
                ),
                fillColor: white,
                hintText: 'Password',
                suffix: Icon(
                  Icons.lock_outlined,
                  size: 25,
                  color: black.withOpacity(.4),
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * .04),
          Center(
            child: Text(
              'Forget Password!',
              style: TextStyle(
                fontSize: 18,
                color: black.withOpacity(.4),
              ),
            ),
          ),
          SizedBox(height: size.height * .04),
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
            child: Material(
              elevation: 10,
              color: primary,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: size.width,
                height: size.height * .06,
                child: Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 18,
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
