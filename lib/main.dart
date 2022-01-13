import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawal_app/change_ownership.dart';
import 'package:lawal_app/constants.dart';
import 'package:lawal_app/login.dart';
import 'package:lawal_app/register_vehicle.dart';
import 'package:lawal_app/renew_license.dart';
import 'package:lawal_app/vehicle_information_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  child: Row(
                    children: [
                      SizedBox(
                        width: context.width / 2 - 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vehicle License',
                              style: TextStyle(
                                color: blueColor,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Registration System',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            const Text(
                              'You are to make 5000NGN payment to UBA using a teller or ATM. After payment, you will be given a card containing a Reg number and a pin.\n \nYou may use these details to login and register your device.\n \nYou can also request for a license renewal or change of ownership',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                            'assets/favpng_2018-jeep-compass-trailhawk-suv-2017-jeep-compass-jeep-trailhawk-car.png'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBox(
                    desc:
                        'You can login with your motor vehicle here. Log in with your pin and Identification number. Fill the registration form and click submit. Please make sure the details are entyered correctly',
                    firstName: 'Register',
                    lastName: 'Vehicle',
                    onPress: SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: blueColor,
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          Get.to(() => RegisterVehicle());
                        },
                        child: Icon(Icons.arrow_forward_rounded),
                      ),
                    ),
                  ),
                  NavBox(
                    desc:
                        'With your pin and ID, you can easily renew your license without delay. Remember that expired license is no more valid.',
                    firstName: 'Renew',
                    lastName: 'License',
                    onPress: SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: blueColor,
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          Get.to(() => RenewLicense());
                        },
                        child: Icon(Icons.arrow_forward_rounded),
                      ),
                    ),
                  ),
                  NavBox(
                    desc:
                        'Change ownership of vehicles online…. No more third party insurance needed',
                    firstName: 'Change',
                    lastName: 'Owner',
                    onPress: SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: blueColor,
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          Get.to(() => ChangeOwnership());
                        },
                        child: Icon(Icons.arrow_forward_rounded),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
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
                  ' Vehicle License Registration',
                  style: TextStyle(
                    color: deepBlueColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 550,
              child: Text(
                'You can register your vehicle, renew your license and change ownership of vehicle. All you need to do is login with your Reg. ID and pin.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: deepBlueColor,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 250, child: Image.asset('assets/IMG_3516.png')),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    'You can only register your vehicle after payment in the bank. Your Pin allows you to perform other operations such as renew License, change ownership, view records etc.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: deepBlueColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View',
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
                  ' Vehicle Information',
                  style: TextStyle(
                    color: deepBlueColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              child: Text(
                'With a few steps, you can view your vehicle information',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: deepBlueColor,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: blueColor,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  Get.to(() => VehicleInfoPage());
                },
                child: Text('START'),
              ),
            ),
            SizedBox(
              height: 150,
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
            )
          ],
        ),
      ),
    );
  }
}

class NavBox extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String desc;
  final Widget onPress;
  const NavBox({
    Key? key,
    required this.desc,
    required this.firstName,
    required this.lastName,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: Container(
        padding: EdgeInsets.all(40),
        height: 350,
        width: 350,
        color: Color(0xffEFEFEF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  firstName,
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
                  lastName,
                  style: TextStyle(
                    color: deepBlueColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: deepBlueColor,
              ),
            ),
            Spacer(),
            onPress,
          ],
        ),
      ),
    );
  }
}
