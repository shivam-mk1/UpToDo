import 'package:flutter/material.dart';

class LoginFirst extends StatefulWidget {
  const LoginFirst({super.key});

  @override
  State<LoginFirst> createState() => _LoginFirstState();
}

class _LoginFirstState extends State<LoginFirst> {
  void _navigateback() => Navigator.pushNamed(context, '/onboard3');
  void _login() => Navigator.pushNamed(context, '/loginsecond');
  void _signin() => Navigator.pushNamed(context, '/signin');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            alignment: Alignment.topLeft,
            onPressed: _navigateback,
            icon: const Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            )),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 35),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Welcome to UpTodo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(flex: 1),
              const SizedBox(
                width: 287,
                child: Text(
                  'Please login to your account or create new account to continue',
                  style: TextStyle(
                    color: Color.fromARGB(164, 255, 255, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(flex: 10),
              InkWell(
                onTap: _login,
                child: Container(
                  height: 48,
                  width: 327,
                  decoration: BoxDecoration(
                      color: const Color(0xff8E7CFF),
                      borderRadius: BorderRadius.circular(4)),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 1),
              InkWell(
                onTap: _signin,
                child: Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(width: 2, color: const Color(0xff8E7CFF))),
                  child: const Center(
                    child: Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
