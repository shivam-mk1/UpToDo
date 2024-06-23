import 'package:flutter/material.dart';
import 'package:krs_to_do/onboard_2.dart';
import 'package:krs_to_do/onboard_3.dart';

void main() => runApp(FirstPage());

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void _navigatetosecondpage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage()));
  }

  void _navigatetolast() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ThirdPage()));
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
                image: AssetImage('assets/Group 182.png'),
                width: 213,
                height: 277.78),
          ),
          const SizedBox(
            height: 5,
          ),
          const Image(
            image: AssetImage('assets/NAV.png'),
            width: 94.83,
            height: 4,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Manage your tasks",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Container(
            width: 269,
            child: const Text(
              textAlign: TextAlign.center,
              "You can easily manage all of your daily tasks in DoMe for free",
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
                const TextButton(
                  onPressed: null,
                  child: Text(
                    "Back",
                    style: TextStyle(
                        color: Color.fromARGB(94, 255, 255, 255), fontSize: 16),
                  ),
                ),
                ElevatedButton(
                    onPressed: _navigatetosecondpage,
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
