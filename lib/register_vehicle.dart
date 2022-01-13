import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lawal_app/constants.dart';
import 'package:lawal_app/login.dart';
import 'package:lawal_app/main.dart';
import 'package:lawal_app/vehicle_information_page.dart';

class RegisterVehicle extends StatelessWidget {
  const RegisterVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fields = [
      'First name',
      'Last name',
      'Middle name',
      'Gender',
      'Date of birth',
      'Marital status',
      'Religion',
      'Nationality',
      'Town',
      'State of origin',
      'LGA',
      'Email address',
      'Mobile number',
      'Permarnent contact address',
      'Next of kin',
      'Next of kin mobile number',
    ];

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: context.width / 2 - 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vehicle',
                              style: TextStyle(
                                color: blueColor,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Registration',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 200,
                              child: const Text(
                                'You can register your vehicle here in a few simple steps',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/Black_Front_Car_PNG_Clip_Art-3084.png',
                        ),
                      )
                    ],
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
                          onPressed: () {
                            Get.to(() => MyHomePage(title: 'title'));
                          },
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
                          onPressed: () {
                            Get.to(() => VehicleInfoPage());
                          },
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
                          onPressed: () {
                            Get.to(() => Login());
                          },
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
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Vehicle',
                  style: TextStyle(
                    color: blueColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ' License Information',
                  style: TextStyle(
                    color: deepBlueColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Fill the form below',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: context.width * 0.50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: List<Widget>.generate(
                        fields.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                width: 200,
                                color: blueColor,
                                child: Text(
                                  fields[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ...List<Widget>.generate(
                          fields.length,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                        color: blueColor,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                        color: blueColor,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: blueColor,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: blueColor,
                                onPrimary: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text('Continue'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Container(
                height: 70,
                color: Color(
                  0xff292A2C,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Start',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'About Us',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Search Vehicle',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms and Conditions',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'FAQs',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              color: Color(0xff292A2C),
              width: double.infinity,
              height: 100,
              child: Text(
                'Copyright 2021. Online Vehicle Licensing Platform',
                style: TextStyle(
                  color: Colors.white,
                  decorationColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
