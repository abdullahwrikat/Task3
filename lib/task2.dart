import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.orangeAccent, Colors.pinkAccent])),
            ),
            Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/noBG.png"),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 200,
                left: 70,
                right:80,
                child: ToggleSwitch(
                  activeFgColor: Colors.black,
                  activeBgColor: const [Colors.white, Colors.white],
                  minWidth: 130.0,
                  cornerRadius: 20.0,
                  totalSwitches: 2,
                  labels: const ['Existing', 'New'],
                )),
            Positioned(
              top: 260,
              left: 50,
              right: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 160,
                width: 60,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        labelText: "Email Address",
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            )),
                      ),
                    ),
                    const Divider(indent: 20, endIndent: 20, thickness: 2),
                    TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 400,
                left: 105,
                right: 105,
                child: InkWell(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.orangeAccent, Colors.pinkAccent]),
                      borderRadius: BorderRadius.circular(5),
                      //color: Colors.deepOrangeAccent,
                    ),
                    child: const Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 460,
                left: 150,
                right: 110,
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )),
            const Positioned(
                top: 510,
                left: 50,
                right: 230,
                child: Divider(
                  color: Colors.white,
                )),
            const Positioned(
                top: 510,
                left: 195,
                right: 100,
                child: Text(
                  "Or",
                  style: TextStyle(color: Colors.white),
                )),
            const Positioned(
                top: 510,
                left: 220,
                right: 50,
                child: Divider(
                  color: Colors.white,
                )),
            Positioned(
                top: 560,
                left: 122,
                right: 110,
                child: Row(
                  children: const [
                    Icon(
                      Icons.facebook,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20, height: 30),
                    Icon(
                      Icons.whatsapp,
                      size: 50,
                      color: Colors.white,
                    )
                  ],
                ))
          ],
        ),
      ]),
    );
  }
}
