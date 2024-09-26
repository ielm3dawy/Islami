import 'package:flutter/material.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:provider/provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counter = 0;
  String selectedTasbeeh = "تسبيح";

  // قائمة الأذكار المتاحة
  final List<String> tasbeehList = [
    "تسبيح", // تعديل النص هنا
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
    "سبحان الله وبحمده",
    "سبحان الله العظيم",
    "لا حول ولا قوة إلا بالله",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    var provider = Provider.of<SettingProvider>(context);
    var textColor = provider.isDark() ? const Color(0xFF141A2E) : Colors.white;
    double screenHeight = mediaQuery.size.height;
    double screenWidth = mediaQuery.size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.04),
          // Sebha Header and Image Section
          SizedBox(
            height: screenHeight * 0.33,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: screenHeight * 0.025,
                  child: Image.asset(
                    "assets/icons/sebha_header.png",
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.6,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: screenWidth * .47,
                  child: Image.asset(
                    "assets/icons/sebha_head.png",
                    scale: 2.8,
                    width: screenWidth * 0.15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.022),
          // Dropdown to select Tasbeeh type
          DropdownButton<String>(
            value: selectedTasbeeh,
            items: tasbeehList.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: theme.textTheme.bodyMedium),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedTasbeeh = newValue!;
              });
            },
          ),
          SizedBox(height: screenHeight * 0.04),
          // Counter Display
          Container(
            width: 80,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: theme.primaryColor.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Text(
              counter.toString(),
              style: theme.textTheme.bodyLarge?.copyWith(
                color: textColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.04),
          // Buttons Section
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Button to increment the counter
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                  ),
                  onPressed: onPressed,
                  child: Text(
                    selectedTasbeeh,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                // Reset Button
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: theme.primaryColor.withOpacity(0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: reset,
                    icon: Icon(
                      Icons.refresh_rounded,
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPressed() {
    setState(() {
      counter++;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }
}