import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/hadith/hadith_details_view.dart';
import 'package:provider/provider.dart';

import '../../core/setting_provider.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<String> hadith = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingProvider>(context);
    var textColor =
        provider.isDark() ? const Color(0xFFC29A13) : const Color(0xFF242424);
    if (hadith.isEmpty) loadHadithData();
    return Column(
      children: [
        Image.asset(
          "assets/icons/hadith_header.png",
          scale: 3,
        ),
        const Divider(),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, idx) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadithDetailsView.routeName,
                  arguments: hadith[idx].trim(),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  "الحديث رقم ${idx + 1}",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            itemCount: hadith.length,
          ),
        ),
      ],
    );
  }

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    hadith = content.split("#");
    setState(() {});
  }
}
