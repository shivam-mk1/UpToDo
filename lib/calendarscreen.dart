import 'package:flutter/material.dart';
import 'package:krs_to_do/focus.dart';
import 'package:krs_to_do/home_empty.dart';
import 'package:krs_to_do/profile.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  void _gotohome() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const HomeEmpty())));
  }

  void _gotofocus() {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => const FocusScreen())));
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
          children: [
            Column(children: [
              IconButton(
                  onPressed: _gotohome,
                  icon:
                      const Image(image: AssetImage('assets/home_empty.png'))),
              const Text(
                "Index",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ]),
            const Spacer(
              flex: 1,
            ),
            const Column(children: [
              IconButton(
                  onPressed: null,
                  icon: Image(image: AssetImage('assets/calendar_fill.png'))),
              Text(
                "Calendar",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ]),
            const Spacer(
              flex: 2,
            ),
            Column(children: [
              IconButton(
                  onPressed: _gotofocus,
                  icon: const Image(image: AssetImage('assets/clock.png'))),
              const Text(
                "Focus",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ]),
            const Spacer(
              flex: 1,
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
      ),
    );
  }
}
