import 'package:flutter/material.dart';

class ParentTips extends StatelessWidget {
  final List<String> tips = [
    "Encourage your child to explore and ask questions.",
    "Ensure your toddler gets enough sleep every night.",
    "Offer a variety of nutritious meals for healthy growth.",
    "Use play-based learning to teach basic concepts.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent Tips'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.lightbulb_outline, color: Colors.orange),
              title: Text(tips[index]),
            ),
          );
        },
      ),
    );
  }
}
