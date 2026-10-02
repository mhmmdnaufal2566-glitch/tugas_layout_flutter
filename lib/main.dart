import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.tealAccent[100],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String nim = '20240801039';

    final int skorAktivitas =
        int.parse(nim.substring(nim.length - 2)) + 50;

    return Scaffold(
      body: Center(
        child: ProfileCard(
          nama: 'Muhammad Naufal Al Ali',
          nim: nim,
          hobi: 'hiking, coding, and reading',
          skorAktivitas: skorAktivitas,
        ),
      ),
    );
  }
}