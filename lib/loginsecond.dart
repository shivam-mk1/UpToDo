import 'package:flutter/material.dart';

class LoginSecond extends StatefulWidget {
  const LoginSecond({super.key});

  @override
  State<LoginSecond> createState() => _LoginSecondState();
}

class _LoginSecondState extends State<LoginSecond> {
  void _navigateback() => Navigator.pushNamed(context, '/loginfirst');
  void _homepage() => Navigator.pushNamed(context, '/homeempty');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 12.0, right: 12, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.left,
                'Login',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Username',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Enter your Username',
                          hintStyle: const TextStyle(color: Color(0xff535353)),
                          helperStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                color: Color(0xff979797),
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                color: Color(0xff979797),
                              )),
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    //   const Positioned(
                    //     bottom: 68,
                    //     left: 1.5,
                    //     child: Text(
                    //       'Username',
                    //       style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w400),
                    //     ),
                    //   ),
                    //   const Spacer(
                    //     flex: 2,
                    //   ),
                    //   const Positioned(
                    //     bottom: 68,
                    //     left: 1.5,
                    //     child: Text(
                    //       'Password',
                    //       style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w400),
                    //     ),
                    //   ),

                    const Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        keyboardType: TextInputType.name,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '• • • • • • • • • • • • • •',
                          hintStyle: const TextStyle(color: Color(0xff535353)),
                          helperStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                color: Color(0xff979797),
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                color: Color(0xff979797),
                              )),
                        )),
                  ],
                ),
              ),
              //   const Spacer(flex: 3),
              Center(
                child: SizedBox(
                  width: 327,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: _homepage,
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff8687E7))),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Flexible(
              //       flex: 8,
              //       child: Container(
              //         height: 1,
              //         // width: 100,
              //         color: Colors.white,
              //       ),
              //     ),
              //     const Flexible(
              //       flex: 1,
              //       child: Text(
              //         'or',
              //         style: TextStyle(
              //             fontSize: 16,
              //             fontWeight: FontWeight.w400,
              //             color: Colors.white),
              //       ),
              //     ),
              //     Flexible(
              //       flex: 8,
              //       child: Container(
              //         height: 1,
              //         // width: 100,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
