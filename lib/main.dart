import 'package:flutter/material.dart';
import 'package:profilepage/features/profile/presentation/screens/profile_screen.dart';
import 'core/theme/app_theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const ProfileScreen(),
    );
  }
}