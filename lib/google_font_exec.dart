import 'package:flutter/material.dart';
import 'package:flutter_font_exec/font_list.dart';

class GoogleFontExec extends StatefulWidget {
  const GoogleFontExec({super.key});

  @override
  State<GoogleFontExec> createState() => _GoogleFontExecState();
}

class _GoogleFontExecState extends State<GoogleFontExec> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Fonts'),
      ),
      body: ListView.builder(
        itemCount: fontFamilies.length,
        itemBuilder: (context, index) {
          final fontFamily = fontFamilies[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Font Ailesi: $fontFamily',
                  style: fontFamily.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Örnek Metin - Font: $fontFamily',
                  style: fontFamily.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
