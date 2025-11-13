import 'package:flutter/material.dart';
import 'package:praktikum_flutter2/ui/login_page.dart';
import 'package:praktikum_flutter2/ui/home_page.dart';
import 'package:praktikum_flutter2/ui/about_page.dart';
import 'package:praktikum_flutter2/ui/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H1D023059 Tugas 7',
      theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
      initialRoute: isLoggedIn ? '/home' : '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
