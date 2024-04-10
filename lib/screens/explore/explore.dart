import 'package:flutter/material.dart';
import 'package:yoga_app/screens/explore/explore_custom_button.dart';
import 'package:yoga_app/screens/explore/explore_custom_listView.dart';
import 'package:yoga_app/screens/explore/explore_custom_listview1.dart';
import 'package:yoga_app/screens/explore/explore_custom_listview2.dart';
import 'package:yoga_app/screens/explore/explore_custom_title.dart';
import 'package:yoga_app/screens/explore/explore_custom_video_course.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final videoURL = "https://www.youtube.com/watch?v=Xi_7G3j6aSE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomButton(
                                onPressed: () {},
                                buttonText: "Beginner",
                              ),
                              const SizedBox(width: 10),
                              CustomButton(
                                onPressed: () {},
                                buttonText: "Flexibility",
                              ),
                              const SizedBox(width: 10),
                              CustomButton(
                                onPressed: () {},
                                buttonText: "Relaxation",
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomButton(
                                onPressed: () {},
                                buttonText: "Pilates",
                              ),
                              const SizedBox(width: 10),
                              CustomButton(
                                onPressed: () {},
                                buttonText: "Meditation",
                              ),
                              const SizedBox(width: 10),
                              CustomButton(
                                onPressed: () {},
                                buttonText: "Health care",
                              ),
                              const SizedBox(width: 10),
                              CustomButton(
                                onPressed: () {},
                                buttonText: "Fat burning",
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create for you",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.5),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/images/explore_create.jpg",
                              scale: 1.0,
                              fit: BoxFit.fill,
                              width: double.infinity,
                              height: 200,
                            ),
                          ),
                          const Positioned(
                            top: 40,
                            left: 30,
                            child: Text(
                              "Custom workout",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 254, 247, 240),
                                  letterSpacing: -0.5),
                            ),
                          ),
                          const Positioned(
                            top: 69,
                            left: 30,
                            child: Text(
                              "Brand new workout everytime!",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 254, 247, 240),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size.fromWidth(180),
                                foregroundColor:
                                    const Color.fromARGB(255, 225, 6, 95),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Start",
                                style: (TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 171, 58, 66),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Titlee(
                      text: "Getting started",
                      textButton: "View all >",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                        height: 260,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Card01(
                              text1: "Ease Yoga for beginners",
                              text2: "16 mins",
                              img: "assets/images/explore_getting_started1.jpg",
                              onPressed: () {},
                              widthImgSize: 300,
                              heightImgSize: 200,
                            ),
                            const SizedBox(width: 20),
                            Card01(
                              text1: "Ease Yoga for beginners",
                              text2: "16 mins",
                              img: "assets/images/focus_leg.jpg",
                              onPressed: () {},
                              widthImgSize: 300,
                              heightImgSize: 200,
                            ),
                          ],
                        ))
                  ],
                ),
                const SizedBox(height: 20),
                // Pilates Toning
                Column(
                  children: [
                    Titlee(
                      text: "Pilates Toning",
                      textButton: "View all >",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 320,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  )
                                ],
                              ),
                              const SizedBox(width: 30),
                              Column(
                                children: [
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Strength & flexibility
                Column(
                  children: [
                    Titlee(
                      text: "Strength & flexibility",
                      textButton: "View all >",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 320,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  )
                                ],
                              ),
                              const SizedBox(width: 30),
                              Column(
                                children: [
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Meditation
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Titlee(
                        text: "Meditation",
                        onPressed: () {},
                        textButton: "View all >"),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 240,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Card03(
                                img: "assets/images/focus_arm.jpg",
                                text1: "5-min Daily",
                                text2: "5 min - Calm",
                                onTap: () {},
                              ),
                              const SizedBox(width: 10),
                              Card03(
                                img: "assets/images/focus_arm.jpg",
                                text1: "5-min Daily",
                                text2: "5 min - Calm",
                                text3: "PRO",
                                onTap: () {},
                              ),
                              const SizedBox(width: 10),
                              Card03(
                                img: "assets/images/focus_arm.jpg",
                                text1: "5-min Daily",
                                text2: "5 min - Calm",
                                text3: "PRO",
                                onTap: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                // Stress relief and rel
                Column(
                  children: [
                    Titlee(
                      text: "Stress relief and rel",
                      textButton: "View all >",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 260,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card01(
                            text1: "Ease Yoga for beginners",
                            text2: "16 mins",
                            img: "assets/images/explore_getting_started1.jpg",
                            onPressed: () {},
                            widthImgSize: 250,
                            heightImgSize: 190,
                          ),
                          const SizedBox(width: 20),
                          Card01(
                            text1: "Ease Yoga for beginners",
                            text2: "16 mins",
                            img: "assets/images/focus_leg.jpg",
                            onPressed: () {},
                            widthImgSize: 250,
                            heightImgSize: 190,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                // Health care
                Column(
                  children: [
                    Titlee(
                      text: "Health care",
                      textButton: "View all >",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 320,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  )
                                ],
                              ),
                              const SizedBox(width: 30),
                              Column(
                                children: [
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  ),
                                  const SizedBox(height: 15),
                                  Card02(
                                    onPressed: () {},
                                    img: "assets/images/focus_chest.jpg",
                                    text: "15 Min Pilates - Low Impact",
                                    text1: "6 mins",
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Fat burning
                Column(
                  children: [
                    Titlee(
                      text: "Fat burning",
                      textButton: "View all >",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 260,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card01(
                            text1: "Ease Yoga for beginners",
                            text2: "16 mins",
                            img: "assets/images/explore_getting_started1.jpg",
                            onPressed: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) =>
                              //         YoutubePlayerScreen(videoUrl: videoURL),
                              //   ),
                              // );
                            },
                            widthImgSize: 250,
                            heightImgSize: 190,
                          ),
                          const SizedBox(width: 20),
                          Card01(
                            text1: "Ease Yoga for beginners",
                            text2: "16 mins",
                            img: "assets/images/focus_leg.jpg",
                            onPressed: () {},
                            widthImgSize: 250,
                            heightImgSize: 190,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Video course",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: SizedBox(
                            height: 180,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Row(
                                  children: [
                                    Card04(
                                      img: "assets/images/focus_arm.jpg",
                                      text1: "Neck & Shoulder",
                                      text2: "Pain Relief",
                                      onTap: () {},
                                    ),
                                    const SizedBox(width: 10),
                                    Card04(
                                      img: "assets/images/focus_arm.jpg",
                                      text1: "5-min Daily",
                                      text2: "Neck & Shoulder",
                                      onTap: () {},
                                    ),
                                    const SizedBox(width: 10),
                                    Card04(
                                      img: "assets/images/focus_arm.jpg",
                                      text1: "5-min Daily",
                                      text2: "Neck & Shoulder",
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
