import 'package:flutter/material.dart';
import 'home.dart';

class Score extends StatelessWidget {
  const Score({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 170,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(69, 134, 201, 1)),
                    ),
                    const Positioned(
                      top: 70,
                      left: 100,
                      // ignore: prefer_const_constructors
                      child: Text("Objects",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w800,
                          )),
                    ),
                    const Positioned(
                      top: -50,
                      //left: 24.5,
                      child: CircleAvatar(
                        radius: 65.0,
                        backgroundImage: AssetImage('lib/images/objects.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    right: 17, left: 17, top: 35, bottom: 30),
                child: Stack(clipBehavior: Clip.none, children: [
                  Container(
                    width: 380,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: Text("Score",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 83, 116, 1),
                          fontSize: 50,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                        )),
                      ),
                                           Center(
                        child: Text("1/2",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 83, 116, 1),
                          fontSize: 50,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                        )),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -30,
                    left: 100,
                    child: Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('lib/images/home_button.png'),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
