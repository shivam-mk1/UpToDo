import 'package:flutter/material.dart';
import 'package:krs_to_do/onboard_1.dart';
import 'package:krs_to_do/onboard_3.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void _navigatetolast() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ThirdPage()));
  }

  void _navigateback() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const FirstPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: _navigatetolast,
                  child: const Text(
                    "SKIP",
                    style: TextStyle(color: Color.fromARGB(159, 255, 255, 255)),
                  ))),
          const Center(
            child: Image(
                image: AssetImage('assets/Frame 162.png'),
                width: 213,
                height: 277.78),
          ),
          const SizedBox(
            height: 5,
          ),
          const Image(
            image: AssetImage('assets/NAV_2.png'),
            width: 94.83,
            height: 4,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Create Daily Routine",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Container(
            width: 269,
            child: const Text(
              textAlign: TextAlign.center,
              "In Uptodo you can create your personalized routine to stay productive",
              style: TextStyle(
                color: Color.fromARGB(
                  201,
                  255,
                  255,
                  255,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: _navigateback,
                  child: const Text(
                    "Back",
                    style: TextStyle(
                        color: Color.fromARGB(94, 255, 255, 255), fontSize: 16),
                  ),
                ),
                ElevatedButton(
                    onPressed: _navigatetolast,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff8875ff)),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(color: Color(0xff8875ff))))),
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
