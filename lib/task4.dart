import 'package:flutter/material.dart';

class Taskk extends StatefulWidget {
  const Taskk({Key? key}) : super(key: key);

  @override
  State<Taskk> createState() => _TaskkState();
}

class _TaskkState extends State<Taskk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.yellow, Colors.blue])),
        child: ListView(
          children: [Container(
            height: 180,
            width: 180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/noBG.png"),
              ),
            ),
          ),
            Center(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
              width: 300,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  const Text(
                    "Hello",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  const Text(
                    "Please Login To Your Account",
                    style: TextStyle(
                        color: Colors.black,
                        ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      suffixIcon:
                      Icon(
                        Icons.email,
                        color: Colors.purple,
                      ),
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.purple,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),InkWell(
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.orange]),
                        borderRadius: BorderRadius.circular(20),
                        //color: Colors.deepOrangeAccent,
                      ),
                      child: const Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Or Login Using Social Media Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(Icons.facebook),CircleAvatar(backgroundColor: Colors.white,
                      radius: 12,
                      backgroundImage: NetworkImage('https://icones.pro/wp-content/uploads/2021/02/google-icone-symbole-png-logo-rose.png'),
                    ),
                      CircleAvatar(backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: NetworkImage('https://www.iconsdb.com/icons/preview/orange/twitter-xxl.png'),
                      ),CircleAvatar(backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: NetworkImage('https://www.iconsdb.com/icons/preview/green/linkedin-5-xxl.png'),
                      ),],)
                ]),
              ),
            )),

          ],
        ),
      ),
      //Container(height: 200,width: 100,color: Colors.white,)],
    );
  }
}
