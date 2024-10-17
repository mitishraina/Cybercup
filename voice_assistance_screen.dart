import 'package:flutter/material.dart';

class VoiceAssistanceScreen extends StatelessWidget {
  const VoiceAssistanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice Assistance'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Activating voice assistance...'),
            Icon(Icons.mic, size: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
