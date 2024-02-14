import 'package:flutter/material.dart';

class FontListWidget extends StatefulWidget {
  const FontListWidget({super.key});

  @override
  State<FontListWidget> createState() => _FontListWidgetState();
}

class _FontListWidgetState extends State<FontListWidget> {
  final List<Map<String, dynamic>> fontFamilies = [
    {
      'family': 'Arimo',
      'fonts': [
        'Arimo-Bold',
        'Arimo-BoldItalic',
        'Arimo-Italic',
        'Arimo-Medium',
        'Arimo-MediumItalic',
        'Arimo-Regular',
        'Arimo-SemiBold',
        'Arimo-SemiBoldItalic',
        'Arimo-Italic-VariableFont_wght',
        'Arimo-VariableFont_wght',
      ],
    },
    {
      'family': 'DM_Sans',
      'fonts': [
        'DMSans-Italic-VariableFont_opsz,wght',
        'DMSans-VariableFont_opsz,wght',
        'DMSans_18pt-Black',
        'DMSans_18pt-Bold',
        'DMSans_18pt-ExtraBold',
        'DMSans_18pt-ExtraLight',
        'DMSans_18pt-Light',
        'DMSans_18pt-Medium',
        'DMSans_18pt-Regular',
        'DMSans_18pt-SemiBold',
        'DMSans_18pt-Thin',
      ],
    },
    {
      'family': 'Fira_Sans',
      'fonts': [
        'FiraSans-Black',
        'FiraSans-BlackItalic',
        'FiraSans-Bold',
        'FiraSans-BoldItalic',
        'FiraSans-ExtraBold',
        'FiraSans-ExtraBoldItalic',
        'FiraSans-Italic',
        'FiraSans-Light',
        'FiraSans-LightItalic',
        'FiraSans-Medium',
        'FiraSans-MediumItalic',
        'FiraSans-Regular',
        'FiraSans-Thin',
        'FiraSans-ThinItalic',
      ],
    },
    {
      'family': 'Roboto',
      'fonts': [
        'Roboto-Black',
        'Roboto-BlackItalic',
        'Roboto-Bold',
        'Roboto-BoldItalic',
        'Roboto-Italic',
        'Roboto-Light',
        'Roboto-LightItalic',
        'Roboto-Medium',
        'Roboto-MediumItalic',
        'Roboto-Regular',
        'Roboto-Thin',
        'Roboto-ThinItalic',
      ],
    },
    {
      'family': 'Open_Sans',
      'fonts': [
        'OpenSans-Italic-VariableFont_wdth,wght',
        'OpenSans_Condensed-Bold',
        'OpenSans-BoldItalic',
        'OpenSans-ExtraBold',
        'OpenSans-ExtraBoldItalic',
        'OpenSans-Italic',
        'OpenSans-Light',
        'OpenSans-LightItalic',
        'OpenSans-Regular',
        'OpenSans-SemiBold',
        'OpenSans-SemiBoldItalic',
      ],
    },
    {
      'family': 'Poppins',
      'fonts': [
        'Poppins-Black',
        'Poppins-BlackItalic',
        'Poppins-Bold',
        'Poppins-BoldItalic',
        'Poppins-ExtraBold',
        'Poppins-ExtraBoldItalic',
        'Poppins-ExtraLight',
        'Poppins-ExtraLightItalic',
        'Poppins-Italic',
        'Poppins-Light',
        'Poppins-LightItalic',
        'Poppins-Medium',
        'Poppins-MediumItalic',
        'Poppins-Regular',
        'Poppins-SemiBold',
        'Poppins-SemiBoldItalic',
        'Poppins-Thin',
        'Poppins-ThinItalic',
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Listesi'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
        itemCount: fontFamilies.length,
        itemBuilder: (context, index) {
          final fontFamily = fontFamilies[index]['family'];
          final fonts = fontFamilies[index]['fonts'];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Font Ailesi: $fontFamily',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              for (var font in fonts)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Abdurrahman Karaoğlu  - A, B, C, Ç, D, E, F, G, Ğ, H, I, İ, J, K, L, M, N, O, Ö, P, R, S, Ş, T, U, Ü, V, Y, Z - Font: $font',
                    style: TextStyle(
                      fontFamily: "$fontFamily-$font",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
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
