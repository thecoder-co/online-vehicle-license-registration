import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lawal_app/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool check = false;
  String data = 'Login as Admin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(60),
                  alignment: Alignment.centerLeft,
                  height: context.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff4F4A50),
                        Color(0xFF000000),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Welcome to\nOnline Vehicle Licensing Platform',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: SizedBox(
                            height: 48,
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Vehicle Reg No.',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: SizedBox(
                            height: 48,
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Pin',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150,
                          child: Row(
                            children: [
                              Checkbox(
                                value: check,
                                onChanged: (val) {
                                  setState(() {
                                    check = val!;
                                  });
                                },
                              ),
                              Spacer(),
                              Text(
                                'Remember me?',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(60.0),
                          child: SizedBox(
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: blueColor,
                                onPrimary: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text('Login'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Row(
                            children: [
                              InkWell(
                                  child: Text(
                                data,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                              Spacer(),
                              Text(
                                'Forgot your pin',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.white,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'DBMS',
                            style: TextStyle(
                              color: Colors.white,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Vehicle Information',
                            style: TextStyle(
                              color: Colors.white,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Support',
                            style: TextStyle(
                              color: Colors.white,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
