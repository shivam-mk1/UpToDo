import 'package:flutter/material.dart';
import 'package:krs_to_do/focus.dart';
import 'package:krs_to_do/profile.dart';

class HomeEmpty extends StatefulWidget {
  const HomeEmpty({super.key});

  @override
  State<HomeEmpty> createState() => _HomeEmptyState();
}

class _HomeEmptyState extends State<HomeEmpty> {
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
    var time = DateTime.now();
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
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        enableFeedback: true,
        shape: const CircleBorder(side: BorderSide.none, eccentricity: 0),
        backgroundColor: const Color(0xff8687E7),
        onPressed: () {
          showDialog(
              context: context,
              builder: ((context) {
                return Dialog(
                  surfaceTintColor: const Color(0xff979797),
                  insetPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.black,
                  child: Flexible(
                    fit: FlexFit.loose,
                    child: SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Add Task',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Spacer(),
                            TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                  hintText: 'Task',
                                  enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, color: Colors.transparent)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xff979797)))),
                            ),
                            const Spacer(),
                            TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: 'Description',
                                hintStyle: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0, color: Colors.transparent)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      width: 1,
                                      color: Color(0xff979797),
                                    )),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.timer_sharp),
                                  onPressed: () async {
                                    DateTime? datepicked = await showDatePicker(
                                        context: context,
                                        initialDate: time,
                                        firstDate: DateTime(time.year),
                                        lastDate: DateTime(time.year + 2));
                                    if (datepicked != null) {
                                      TimeOfDay? timepicked =
                                          await showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now(),
                                              initialEntryMode:
                                                  TimePickerEntryMode.input);
                                      if (timepicked != null) {
                                        print(timepicked);
                                      }
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: const Image(
                                      image: AssetImage('assets/tag.png')),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Image(
                                    image: AssetImage('assets/flag.png'),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: ((context) =>
                                            const TaskPriority()));
                                  },
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Image(
                                      image: AssetImage('assets/send.png'),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }));
        },
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
            const Spacer(),
            Column(children: [
              IconButton(
                  onPressed: _gotofocus,
                  icon: const Image(image: AssetImage('assets/clock.png'))),
              const Text(
                "Focus",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ]),
            const Spacer(),
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

class TaskPriority extends StatefulWidget {
  const TaskPriority({super.key});

  @override
  State<TaskPriority> createState() => _TaskPriorityState();
}

class _TaskPriorityState extends State<TaskPriority> {
  int selectedIndex = 0;
  Widget priority(index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 0,
                  color: selectedIndex == index
                      ? Color(0xff8687E7)
                      : Color(0xff272727)),
              borderRadius: BorderRadius.circular(4),
              color: selectedIndex == index
                  ? Color(0xff8687E7)
                  : Color(0xff272727)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/flag.png')),
              Text(
                '${index + 1}',
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          insetPadding: const EdgeInsets.fromLTRB(15, 130, 15, 200),
          surfaceTintColor: const Color(0xff979797),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Task Priority',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: const Color(0xff979797),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.builder(
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return priority(index);
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 153,
                        height: 48,
                        color: Colors.transparent,
                        child: const Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 153,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xff8687E7)),
                        child: const Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
