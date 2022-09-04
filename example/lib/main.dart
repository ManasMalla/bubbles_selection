import 'package:bubbles_selection/bubbles_selection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BubbleSelectionUi(),
    );
  }
}

class BubbleSelectionUi extends StatefulWidget {
  const BubbleSelectionUi({Key? key}) : super(key: key);

  @override
  State<BubbleSelectionUi> createState() => _BubbleSelectionUiState();
}

class _BubbleSelectionUiState extends State<BubbleSelectionUi> {
  late List<Bubble> selectedBubbles;

  @override
  void initState() {
    super.initState();
    selectedBubbles = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            "Bubble Selection",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          const Spacer(),
          BubbleSelection(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            bubbles: [
              Bubble(
                  text: "Gaming🎮",
                  activeColor: Colors.red.withOpacity(0.5),
                  inactiveColor: Colors.blue.withOpacity(0.5),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.yellow,
                  )),
              Bubble(
                text: "Food🍔",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 237, 141, 17).withOpacity(0.5),
                textStyle: const TextStyle(
                  fontSize: 16,
                ),
              ),
              Bubble(
                text: "Health &\n Fitness🏃",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 16, 233, 186).withOpacity(
                  0.5,
                ),
                scale: 0.8,
              ),
              Bubble(
                text: "Worklife🌏",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 89, 37, 245).withOpacity(0.5),
                textStyle: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Bubble(
                text: "Fun🎉",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 176, 34, 224).withOpacity(0.5),
              ),
              Bubble(
                text: "Comedy😂",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 89, 37, 245).withOpacity(0.5),
              ),
              Bubble(
                text: "Focus🎯",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 176, 34, 224).withOpacity(0.5),
              ),
              Bubble(
                text: "Music🎶",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 89, 37, 245).withOpacity(0.5),
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              Bubble(
                text: "Travel🚗",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 176, 34, 224).withOpacity(0.5),
              ),
              Bubble(
                text: "Sports🏀",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 89, 37, 245).withOpacity(0.5),
                textStyle: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Bubble(
                text: "News📰",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor:
                    const Color.fromARGB(255, 176, 34, 224).withOpacity(0.5),
              ),
            ],
            selectedBubbles: selectedBubbles,
            size: const Size(
              900,
              300,
            ),
            onSelect: (bubble) {
              setState(() {
                selectedBubbles.add(bubble);
              });
            },
            onRemoved: (bubble) {
              setState(() {
                selectedBubbles.remove(bubble);
              });
            },
          ),
          const Spacer(),
          Wrap(
            children: selectedBubbles
                .map<Widget>(
                  (bubble) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(
                        bubble.text,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
