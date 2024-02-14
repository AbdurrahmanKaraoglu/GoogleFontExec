import 'package:flutter/material.dart';
import 'package:flutter_font_exec/font_exec.dart';
import 'package:flutter_font_exec/google_font_exec.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Font Exec'),
      ),
      body: Column(
        children: [
          // Sayfalara geçiş yapmak için butonlar
          ElevatedButton(
            onPressed: () {
              Get.to(() => const FontListWidget());
            },
            child: const Text('Font Exec'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const GoogleFontExec());
            },
            child: const Text('Google Font Exec'),
          ),
        ],
      ),
    );
  }
}
