import 'package:flutter/material.dart';
import 'package:krs_to_do/calendarscreen.dart';
import 'package:krs_to_do/home_empty.dart';
import 'package:krs_to_do/profile.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({super.key});

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  void _gotohome() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const HomeEmpty())));
  }

  void _gotocalendar() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const Calendar())));
  }

  void _gotoprofile() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        enableFeedback: true,
        shape: const CircleBorder(side: BorderSide.none, eccentricity: 0),
        backgroundColor: const Color(0xff8687E7),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 32,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        height: 90,
        color: const Color(0xff363636),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(children: [
                  IconButton(
                      onPressed: _gotohome,
                      icon: const Image(
                          image: AssetImage('assets/home_empty.png'))),
                  const Text(
                    "Index",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ]),
                const SizedBox(
                  width: 35,
                ),
                Column(children: [
                  IconButton(
                      onPressed: _gotocalendar,
                      icon: const Image(
                          image: AssetImage('assets/calendar.png'))),
                  const Text(
                    "Calendar",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ])
              ],
            ),
            Row(
              children: [
                const Column(children: [
                  IconButton(
                      onPressed: null,
                      icon: Image(image: AssetImage('assets/clock_fill.png'))),
                  Text(
                    "Focus",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ]),
                const SizedBox(
                  width: 35,
                ),
                Column(children: [
                  IconButton(
                      onPressed: _gotoprofile,
                      icon: const Image(image: AssetImage('assets/user.png'))),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
