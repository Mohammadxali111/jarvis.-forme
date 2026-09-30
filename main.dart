import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: JarvisApp()));
}

class JarvisApp extends StatelessWidget {
  const JarvisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JARVIS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0C10),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3FA9FF),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF3FA9FF), width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF3FA9FF).withOpacity(0.4),
                      blurRadius: 30,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(Icons.circle, color: Color(0xFF4DB2FF), size: 24),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'JARVIS',
                style: TextStyle(
                  color: Color(0xFFECE9E2),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 4,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'النواة شغالة — جاهزين للخطوة الجاية',
                style: TextStyle(color: Color(0xFF9BA0AC), fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
