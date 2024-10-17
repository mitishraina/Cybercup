import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home IoT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/chat': (context) => ChatScreen(),
        '/information': (context) => InformationScreen(),
        '/voice': (context) => VoiceAssistanceScreen(),
      },
    );
  }
}

// SplashScreen Widget
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to दादू Care',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// HomePage Widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/information');
              },
              child: Text('Information'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
              child: Text('Community Chat'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/voice');
              },
              child: Text('Voice Assistance'),
            ),
          ],
        ),
      ),
    );
  }
}

// ChatScreen Widget
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Chat'),
      ),
      body: Center(
        child: Text(
          'Chat with others here!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// InformationScreen Widget
class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Page'),
      ),
      body: Center(
        child: Text(
          'User Information and Activity Logs',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// VoiceAssistanceScreen Widget
class VoiceAssistanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voice Assistance'),
      ),
      body: Center(
        child: Text(
          'Voice assistance functionality',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
