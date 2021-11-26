import 'package:flutter/material.dart';
import 'quiz_menu.dart';
import 'score.dart';

class ObjectExercice extends StatelessWidget {
  const ObjectExercice({Key? key}) : super(key: key);

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
                      // margin: const EdgeInsets.only(left: 20 ),
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
                margin: const EdgeInsets.only(right: 17, left: 17, top: 35,bottom: 30),
                child: Stack(children: [
                  Container(
                    width: 380,
                    height: 350,
                    padding: const EdgeInsets.only(right: 100, left: 100),
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
                  Positioned(
                    top: 23,
                    left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 240,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage('lib/images/pen.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                          InkWell(
                            child: Container(
                              height: 70,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(12, 11, 11, 0.37),
                              ),
                              child:const Center(child:                           
                               Text("Pen",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                )),)
                            ),
                            onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Score()),
                        );
                            },
                          ),
                         
                        const SizedBox(height: 5,),
                           InkWell(
                            child: Container(
                              height: 70,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(12, 11, 11, 0.37),
                              ),
                              child:const Center(child:                           
                               Text("Door",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                )),)
                            ),
                            onTap: () {
                          /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuizMenu()),
                        );*/
                            },
                          ),const SizedBox(height: 5,),
                                                    InkWell(
                            child: Container(
                              height: 70,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(12, 11, 11, 0.37),
                              ),
                              child:const Center(child:                           
                               Text("Window",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                )),)
                            ),
                            onTap: () {
                          /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuizMenu()),
                        );*/
                            },
                          ),
                      ],
                    ),
                  ),
                ]),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundImage:
                          AssetImage('lib/images/blue_return_arrow.png'),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizMenu()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
