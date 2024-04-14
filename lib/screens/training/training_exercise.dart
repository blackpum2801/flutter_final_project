import 'package:flutter/material.dart';

class TrainingExercise extends StatefulWidget {
  const TrainingExercise({Key? key}) : super(key: key);
  @override
  State<TrainingExercise> createState() => _TrainingExerciseState();
}

class _TrainingExerciseState extends State<TrainingExercise> {
  int daysCompleted = 0;
  int totalTasks = 9;
  int completedTasks = 0;
  final int totalDays = 30;
  void updateProgress() {
    if (daysCompleted < totalDays) {
      setState(() {
        daysCompleted++;
      });
    }
  }

  void updateProgressCirCle(int index) {
    setState(() {
      completedTasks = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Colors.red,
            expandedHeight: 200.0,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double maxHeight = constraints.biggest.height;
                double titleOpacity =
                    1 - (maxHeight - kToolbarHeight) / (200.0 - kToolbarHeight);
                return FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(left: 60, bottom: 16),
                  title: Opacity(
                    opacity: titleOpacity.clamp(0.0, 1.0),
                    child: const Text(
                      'Beginner Plan',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/begginerPlan.png',
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                      ),
                      const Positioned(
                        top: 90,
                        left: 30,
                        child: Text(
                          'Beginner Plan',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 125,
                        left: 30,
                        child: SizedBox(
                          height: 6,
                          width: 170,
                          child: LinearProgressIndicator(
                            value: daysCompleted / totalDays,
                            backgroundColor:
                                const Color.fromARGB(255, 173, 45, 45),
                            valueColor:
                                const AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 135,
                        left: 30,
                        child: Text(
                          '${totalDays - daysCompleted} days left',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.green),
                        ),
                        child: const Icon(
                          Icons.flag,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Week 1",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Text(
                        "0/7",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(40),
                        child: Ink(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 229, 229, 229),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Day ${index + 1}",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CircularProgressIndicator(
                                        value: daysCompleted / totalDays,
                                        backgroundColor: const Color.fromARGB(
                                            255, 210, 210, 210),
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                                Colors.blue),
                                      ),
                                      Text(
                                        "${(daysCompleted / totalDays * 100).toStringAsFixed(0)}%", // Hiển thị phần trăm
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              childCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
