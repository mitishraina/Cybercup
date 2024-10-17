import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Information'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ", style: TextStyle(fontSize: 18)),
            Text("Age: ", style: TextStyle(fontSize: 18)),
            Text("Contact: ", style: TextStyle(fontSize: 18)),
            Text("Emergency Contact: ", style: TextStyle(fontSize: 18)),
            Text("Address: ", style: TextStyle(fontSize: 18)),
            Text("Medication: ", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
