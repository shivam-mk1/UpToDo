import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  void _navigateback() => Navigator.pushNamed(context, '/loginfirst');
  void _register() => Navigator.pushNamed(context, '/homeempty');
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
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Register',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const Spacer(
                flex: 1,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          hintText: 'Enter your Username',
                          hintStyle: const TextStyle(color: Color(0xff535353)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff979797), width: 0.8),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  width: 0.8, color: Color(0xff979797))))),
                  const Positioned(
                    bottom: 68,
                    left: 1.5,
                    child: Text(
                      'Username',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  TextField(
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.white,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          hintText: '• • • • • • • • • •',
                          hintStyle: const TextStyle(color: Color(0xff535353)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff979797), width: 0.8),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  width: 0.8, color: Color(0xff979797))))),
                  const Positioned(
                    bottom: 68,
                    left: 1.5,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Colors.white,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          hintText: '• • • • • • • • • •',
                          hintStyle: const TextStyle(color: Color(0xff535353)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff979797), width: 0.8),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  width: 0.8, color: Color(0xff979797))))),
                  const Positioned(
                    bottom: 68,
                    left: 1.5,
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const Spacer(flex: 2),
              InkWell(
                onTap: _register,
                child: Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xff8687E7)),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
