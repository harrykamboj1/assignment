import 'dart:convert';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:assignment/InfluencerHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class InfluencerLoginPage extends StatefulWidget {
  const InfluencerLoginPage({Key? key}) : super(key: key);

  @override
  _InfluencerLoginPageState createState() => _InfluencerLoginPageState();
}

class _InfluencerLoginPageState extends State<InfluencerLoginPage> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: 150,
              alignment: Alignment.center,
              color: Colors.deepOrangeAccent,
              child: const Image(
                image: AssetImage('images/star.png'),
              ),
            ),
            Container(
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
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              controller: emailEditingController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrangeAccent)),
                                hintText: "Enter the Email",
                                filled: true,
                                fillColor: Colors.grey[300],
                              ),
                            ),
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
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 50,
                            child: TextField(
                              controller: passwordEditingController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrangeAccent)),
                                hintText: "Enter the password",
                                filled: true,
                                fillColor: Colors.grey[300],
                              ),
                            ),
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
                    child: GestureDetector(
                      onTap: () => login(emailEditingController.text.toString(),
                          passwordEditingController.text.toString()),
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
            )
          ],
        )),
      ),
    );
  }

  void login(String number, String password) async {
    try {
      SharedPreferences.setMockInitialValues({});
      SharedPreferences prefs = await SharedPreferences.getInstance();

      Response response = await post(
          Uri.parse("https://influence-marketing.herokuapp.com/api/login"),
          body: {'phone': number, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token'].toString());

        print('account login successfully');

        prefs.setString("token", data['token']);
        print(prefs.getString('token'));
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
