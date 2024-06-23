import 'package:flutter/material.dart';
import 'package:krs_to_do/home_empty.dart';
import 'package:krs_to_do/onboard_2.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  void _navigateback() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const SecondPage())));
  }

  void _navigatetomain() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeEmpty()));
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
              child: const TextButton(
                  onPressed: null,
                  child: Text(
                    "SKIP",
                    style: TextStyle(color: Color.fromARGB(159, 255, 255, 255)),
                  ))),
          const Center(
            child: Image(
                image: AssetImage('assets/Frame 161.png'),
                width: 213,
                height: 277.78),
          ),
          const SizedBox(
            height: 5,
          ),
          const Image(
            image: AssetImage('assets/NAV_3.png'),
            width: 94.83,
            height: 4,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Orgonaize your tasks",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Container(
            width: 299,
            child: const Text(
              textAlign: TextAlign.center,
              "You can organize your daily tasks by adding your tasks into separate categories",
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
                    onPressed: _navigatetomain,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff8875ff)),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(color: Color(0xff8875ff))))),
                    child: const Text(
                      "Get Started",
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
