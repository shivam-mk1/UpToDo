import 'package:flutter/material.dart';

void main() => runApp(FirstPage());

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image(
                image: AssetImage('assets/Group 182.png'),
                width: 213,
                height: 277.78),
            Text("Manage your tasks")
          ],
        ),
      ),
    );
  }
}
