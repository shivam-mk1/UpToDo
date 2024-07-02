import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:krs_to_do/calendarscreen.dart';
import 'package:krs_to_do/focus.dart';
import 'package:krs_to_do/profile.dart';

class HomeEmpty extends StatefulWidget {
  const HomeEmpty({super.key});

  @override
  State<HomeEmpty> createState() => _HomeEmptyState();
}

class _HomeEmptyState extends State<HomeEmpty> {
  void _gotocalendar() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const Calendar())));
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/sort.png'),
          ),
        ),
        title: const Text(
          'Index',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 22,
              backgroundImage: AssetImage('assets/KRS.jpg'),
            ),
          )
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            Image(
              image: AssetImage('assets/rafiki.png'),
              width: 227,
              height: 227,
            ),
            Spacer(flex: 1),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'What do you want to do today?',
                //   textAlign: /,
                style: TextStyle(
                    color: Color.fromARGB(201, 255, 255, 255), fontSize: 20),
              ),
            ),
            Spacer(flex: 1),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Tap + to add your tasks',
                style: TextStyle(
                    color: Color.fromARGB(210, 255, 255, 255), fontSize: 16),
              ),
            ),
            Spacer(flex: 10)
          ],
        ),
      ),
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
            const Column(children: [
              IconButton(
                  onPressed: null,
                  icon: Image(image: AssetImage('assets/home.png'))),
              Text(
                "Index",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ]),
            const Spacer(
              flex: 1,
            ),
            Column(children: [
              IconButton(
                  onPressed: _gotocalendar,
                  icon: const Image(image: AssetImage('assets/calendar.png'))),
              const Text(
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
