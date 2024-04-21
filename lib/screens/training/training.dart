import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yoga_app/screens/training/training_schedule.dart';

class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  late final PageController _pageController;
  late final PageController _listController;
  int _currentPage = 0;
  final double _pageViewHeight = 300;
  // final double _pageViewWidth = 50;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.9,
    );
    _listController = PageController(
      viewportFraction: 0.95,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _listController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  Widget _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      indicators.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i
                ? const Color.fromARGB(255, 148, 179, 198)
                : const Color.fromARGB(255, 192, 189, 189),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: indicators,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yoga',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home), // thay đổi icon tùy ý
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NextPage()
              // ,),
              // )
            },
          ),
        ],
      ),
      body: ListView(
        // ListView cho phép người dùng cuộn thay vì SingleChildScrollView
        children: [
          _buildPageIndicator(),
          SizedBox(
            height: _pageViewHeight,
            // width: _pageViewWidth,
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const TrainingSchedule()),
                    );
                  },
                  child: Stack(
                    children: [
                      Positioned(
                        right: 20,
                        top: 0,
                        bottom: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/begginerPlan.png",
                              scale: 1.0,
                              fit: BoxFit.fill,
                            )),
                      ),
                      const Positioned(
                        left: 30,
                        top: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beginner',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Plan',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '30 days left',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 33,
                        bottom: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.69,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFF94B3C6))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.teal,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Day 1',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.teal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Positioned.fill(
                        right: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/intermediatePlan.png",
                            scale: 1.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 30,
                        top: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Intermediate',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Plan',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '30 days left',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 33,
                        bottom: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF94B3C6),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.teal,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Day 1',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.teal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/advancePlan.png",
                              scale: 1.0,
                              fit: BoxFit.fill,
                            )),
                      ),
                      const Positioned(
                        left: 30,
                        top: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Advanced',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Plan',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '30 days left',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 33,
                        bottom: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF94B3C6),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.teal,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Day 1',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.teal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Code here
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Recent",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 138, 148, 162),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Recent
                SizedBox(
                  height: 73,
                  child: PageView(
                    controller: _listController,
                    children: [
                      InkWell(
                        onTap: () {
                          // Handle the tap action
                        },
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: const Image(
                              image:
                                  AssetImage("assets/images/begginerPlan.png"),
                              width: 60,
                              height: 60,
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: const Text(
                            'Beginner Plan',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 64, 69, 80),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: const Text(
                            '30 day left',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 118, 125, 142),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: const Image(
                              image:
                                  AssetImage("assets/images/advancePlan.png"),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            'Advance Plan',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 64, 69, 80),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: const Text(
                            '30 day left',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 118, 125, 142),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                // Daily
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Daily",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.grey.withOpacity(0.1),
                                  BlendMode.srcOver,
                                ),
                                child: Image.asset(
                                  "assets/images/daily_scenery.png",
                                  width: 180,
                                  height: 150,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Positioned(
                                top: 19,
                                left: 20,
                                child: Text(
                                  "Sunrise Yoga",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromRGBO(49, 6, 141, 0.914),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/daily_scenery1.jpg",
                                width: 180,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                              const Positioned(
                                top: 19,
                                left: 20,
                                child: SizedBox(
                                  width: 130,
                                  child: Text(
                                    "Bedtime strech for SLEEP",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.5),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Meditation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.grey.withOpacity(0.3),
                                BlendMode.srcOver,
                              ),
                              child: Image.asset(
                                "assets/images/meditation.jpg",
                                width: 600,
                                height: 180,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Positioned(
                              top: 50,
                              left: 30,
                              child: Text(
                                "Meditation",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    letterSpacing: 4),
                              ),
                            ),
                            const Positioned(
                              top: 85,
                              left: 30,
                              child: Text(
                                "Find your inner peace",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 234, 222, 222),
                                    letterSpacing: 4),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Body focus",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/focus_chest.jpg",
                                      width: 180,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    const Positioned(
                                      top: 18,
                                      left: 15,
                                      child: Text(
                                        "Chest",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 205, 211, 228),
                                            letterSpacing: 2),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/focus_belly.jpg",
                                      width: 180,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    const Positioned(
                                      top: 18,
                                      left: 15,
                                      child: Text(
                                        "Belly",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 237, 240, 248),
                                            letterSpacing: 2),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/focus_arm.jpg",
                                      width: 180,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    const Positioned(
                                      top: 18,
                                      left: 15,
                                      child: Text(
                                        "Arm",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 237, 240, 248),
                                            letterSpacing: 2),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/focus_leg.jpg",
                                      width: 180,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    const Positioned(
                                      top: 18,
                                      left: 15,
                                      child: Text(
                                        "Belly",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 237, 240, 248),
                                            letterSpacing: 2),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
