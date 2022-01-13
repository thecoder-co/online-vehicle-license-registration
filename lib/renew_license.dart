import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lawal_app/constants.dart';
import 'package:lawal_app/login.dart';
import 'package:lawal_app/main.dart';
import 'package:lawal_app/vehicle_information_page.dart';

class RenewLicense extends StatelessWidget {
  const RenewLicense({Key? key}) : super(key: key);

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
    var fieldsContent = [
      'Idunnuoluwa',
      'Abimbola',
      'Ifedolapo',
      'Male',
      '27/10/03',
      'Single',
      'Christian',
      'Nigerian',
      'Abijo',
      'Lagos',
      'Ibeju-Lekki',
      'idunnu.ab@gmail.com',
      '07016307908',
      'No 18, ife-balogun street',
      'Abimbola Balogun',
      '07056557150',
    ];
    List<String> inspec = [
      'Inspection date',
      'Road certification number',
      'Inspection officer name',
    ];

    List<String> inspecContent = [
      '27/10/03',
      '2345678-3456',
      'Mama Precious',
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
                        width: context.width / 2.5 - 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Renew',
                              style: TextStyle(
                                color: blueColor,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'License',
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
                                'Enter your vehicle reg id here to pay for your licesne renewal',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 350,
                              height: 60,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: SizedBox(
                                        height: 48,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    height: 48,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(Icons.search_rounded),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
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
            SizedBox(
              height: 50,
            ),
            Text(
              'Owner',
              style: TextStyle(
                color: blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/IMG_3144.png'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Christopher Ikechukwu Oliji',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              'Vehicle Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: blueColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: context.height / 1.2,
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Table(
                      border: TableBorder(
                        bottom: BorderSide(
                          color: blueColor,
                        ),
                        top: BorderSide(
                          color: blueColor,
                        ),
                        left: BorderSide(
                          color: blueColor,
                        ),
                        right: BorderSide(
                          color: blueColor,
                        ),
                        horizontalInside: BorderSide(
                          color: blueColor,
                        ),
                        verticalInside: BorderSide(
                          color: blueColor,
                        ),
                      ),
                      children: List<TableRow>.generate(
                        fields.length,
                        (index) {
                          return TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fields[index],
                                ),
                              ),
                            ],
                            decoration: BoxDecoration(
                              color: index % 2 != 0
                                  ? Color(0xFFB3DAFF)
                                  : Color(0xFFF6FEFF),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Table(
                      border: TableBorder(
                        bottom: BorderSide(
                          color: blueColor,
                        ),
                        top: BorderSide(
                          color: blueColor,
                        ),
                        left: BorderSide(
                          color: blueColor,
                        ),
                        right: BorderSide(
                          color: blueColor,
                        ),
                        horizontalInside: BorderSide(
                          color: blueColor,
                        ),
                        verticalInside: BorderSide(
                          color: blueColor,
                        ),
                      ),
                      children: List<TableRow>.generate(
                        fields.length,
                        (index) {
                          return TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fieldsContent[index],
                                ),
                              ),
                            ],
                            decoration: BoxDecoration(
                              color: index % 2 != 0
                                  ? Color(0xFFB3DAFF)
                                  : Color(0xFFF6FEFF),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Transaction Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: blueColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: context.width * 0.7,
              height: 500,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                border: Border.all(
                  color: blueColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 25),
                          child: Text(
                            'Invoice Number #390',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: blueColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'Client Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Abimbola Idunnuoluwa',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: blueColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'Payment due',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Within 5 days',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: blueColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'Invoice Date',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '13th of January 2022',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'N5000',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: blueColor,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/mastercard-color_large.png',
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/bitcoin-color-large.png',
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/paypal-color-large.png',
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/visa-color_large.png',
                                    height: 40,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Card Holder\'s Name',
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
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Card Number',
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
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        hintText: 'MM/YY',
                                        fillColor: Colors.white,
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          borderSide: BorderSide(
                                            color: blueColor,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
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
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        hintText: 'CVV',
                                        fillColor: Colors.white,
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          borderSide: BorderSide(
                                            color: blueColor,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
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
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Pin',
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
                              Spacer(),
                              SizedBox(
                                width: 80,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: blueColor,
                                    onPrimary: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text('Pay'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
