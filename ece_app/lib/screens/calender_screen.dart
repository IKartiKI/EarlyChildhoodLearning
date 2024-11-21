import 'package:flutter/material.dart';

class ActivityCalendar extends StatelessWidget {
  final List<Map<String, String>> activities = [
    {"day": "Monday", "activity": "Color Sorting Game"},
    {"day": "Tuesday", "activity": "Story Time"},
    {"day": "Wednesday", "activity": "Finger Painting"},
    {"day": "Thursday", "activity": "Puzzle Solving"},
    {"day": "Friday", "activity": "Outdoor Play"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Calendar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.blueAccent),
              title: Text(activities[index]['day']!),
              subtitle: Text(activities[index]['activity']!),
            ),
          );
        },
      ),
    );
  }
}
