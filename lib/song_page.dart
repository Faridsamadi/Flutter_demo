import 'package:flutter/material.dart';
import 'package:music_player/neomorphic_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
          child: Column(
            children: [
              // back button and menu button
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeoBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text("P L A Y L I S T"),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeoBox(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              //cover art, artist name, song name
              NeoBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("lib/images/cover.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "East World",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                "Kagura",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //start time, shuffle button, repeat button,end time
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("0:00"),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text("4:22"),
                ],
              ),

              const SizedBox(
                height: 40,
              ),

              //linear bar
              NeoBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.35,
                  progressColor: Colors.deepOrange,
                  // backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              // previous song, pause play, skip next song
              const SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: NeoBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: NeoBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeoBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
