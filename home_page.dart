import 'package:flutter/material.dart';
import 'package:daducare/screens/voice_assistance_screen.dart';
import 'package:daducare/widgets/custom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi, Mitish"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("O2: ", style: TextStyle(fontSize: 18)),
            Text("Pulse rate: ", style: TextStyle(fontSize: 18)),
            Text("Temperature: ", style: TextStyle(fontSize: 18)),
            Text("Motion Sensor: ", style: TextStyle(fontSize: 18)),
            Text("No. of steps: ", style: TextStyle(fontSize: 18)),
            Text("Medicine: ", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavbar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.mic),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const VoiceAssistanceScreen()));
        },
      ),
    );
  }
}
