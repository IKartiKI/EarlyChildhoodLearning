import 'package:flutter/material.dart';

class ProgressTracker extends StatefulWidget {
  @override
  _ProgressTrackerState createState() => _ProgressTrackerState();
}

class _ProgressTrackerState extends State<ProgressTracker> {
  // Pre-added milestones
  final List<Map<String, dynamic>> _milestones = [
    {'title': 'Learned new colors', 'deadline': '2024-12-01'},
    {'title': 'Improved fine motor skills', 'deadline': '2024-12-15'},
    {'title': 'Started recognizing shapes', 'deadline': '2024-12-10'},
    {'title': 'Learned basic counting', 'deadline': '2025-01-05'},
    {'title': 'Engaged in group play', 'deadline': '2025-01-20'},
  ];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _deadlineController = TextEditingController();

  void _addOrEditMilestone({int? index}) {
    if (index != null) {
      // Editing mode
      _titleController.text = _milestones[index]['title'];
      _deadlineController.text = _milestones[index]['deadline'];
    } else {
      // Adding mode
      _titleController.clear();
      _deadlineController.clear();
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(index != null ? 'Edit Milestone' : 'Add Milestone'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Milestone Title'),
              ),
              TextField(
                controller: _deadlineController,
                decoration:
                    InputDecoration(labelText: 'Deadline (e.g., 2024-12-31)'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final String title = _titleController.text.trim();
                final String deadline = _deadlineController.text.trim();

                if (title.isNotEmpty && deadline.isNotEmpty) {
                  setState(() {
                    if (index != null) {
                      _milestones[index] = {
                        'title': title,
                        'deadline': deadline
                      };
                    } else {
                      _milestones.add({'title': title, 'deadline': deadline});
                    }
                  });
                }
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _removeMilestone(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Milestone'),
          content: Text('Are you sure you want to delete this milestone?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _milestones.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Tracker'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () => _addOrEditMilestone(),
              icon: Icon(Icons.add),
              label: Text('Add Milestone'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _milestones.length,
                itemBuilder: (BuildContext context, int index) {
                  final milestone = _milestones[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        milestone['title'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Deadline: ${milestone['deadline']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.blue),
                            onPressed: () => _addOrEditMilestone(index: index),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _removeMilestone(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
