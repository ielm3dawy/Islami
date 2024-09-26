import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    double Height = mediaQuery.size.height;
    double Width = mediaQuery.size.width;

    return Container(
      margin: const EdgeInsets.only(
        top: 180,
      ),
      child: Column(
        children: [
          Image.asset("assets/images/radio_header.png"),
          const SizedBox(
            height: 40,
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.skip_previous_rounded,
                  color: theme.primaryColor,
                  size: 50,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.play_arrow_rounded,
                  color: theme.primaryColor,
                  size: 90,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.skip_next_rounded,
                  color: theme.primaryColor,
                  size: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onPressed() {}
}
