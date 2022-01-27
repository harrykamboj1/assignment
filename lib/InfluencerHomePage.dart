import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  height: 200,
                  color: Colors.deepOrangeAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                color: Colors.deepOrangeAccent,
                                width: 50,
                              )),
                          const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Hey Florence!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800),
                              )),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.list,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 175,
                  left: 158,
                  child: CircleAvatar(
                    radius: 50,
                    child: Image(
                      height: 30,
                      width: 30,
                      image: AssetImage("images/homeImage.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            width: 450,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Campaigns",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Ongoing",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Initiated",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Completed",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Rejected",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Need Help ? We got you ",
                            style: TextStyle(color: Colors.black87),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.deepOrangeAccent),
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(
              Icons.home,
              color: Colors.deepOrangeAccent,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(
              Icons.event_note_sharp,
              color: Colors.deepOrangeAccent,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(
              Icons.account_circle,
              color: Colors.deepOrangeAccent,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(
              Icons.message,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
