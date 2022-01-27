import 'dart:ui';

import 'package:assignment/InfluencerHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfluencerLoginPage extends StatefulWidget {
  const InfluencerLoginPage({Key? key}) : super(key: key);

  @override
  _InfluencerLoginPageState createState() => _InfluencerLoginPageState();
}

class _InfluencerLoginPageState extends State<InfluencerLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.deepOrangeAccent,
              child: const Image(
                image: AssetImage('images/star.png'),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 17),
                      child: Text(
                        "Welcome! One of a Kind \n MarketPlace",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                            radius: 35,
                            child: Image(
                              height: 50,
                              width: 50,
                              image: AssetImage('images/influencer.png'),
                            ),
                          ),
                          CircleAvatar(
                            radius: 35,
                            child: Image(
                              height: 50,
                              width: 50,
                              image: AssetImage('images/brand.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 55),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Email',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                            )
                          ]),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Password',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forget email Password?',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 25),
                      child: Container(
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                        height: 45,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          'New here? Join us Now',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
