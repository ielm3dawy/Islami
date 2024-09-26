import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:islami/moduls/hadith/hadith_view.dart';
import 'package:islami/moduls/quran/quran_view.dart';
import 'package:islami/moduls/radio/raido_view.dart';
import 'package:islami/moduls/sebha/sebha_view.dart';
import 'package:islami/moduls/settings/settings_view.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIdx = 0;
  List<Widget> screensList = [
    const QuranView(),
    const HadithView(),
    const SebhaView(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackgroundImage()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lang.islami,
          ),
          centerTitle: true,
        ),
        body: screensList[selectedIdx],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIdx,
          onTap: (index) {
            setState(() {
              selectedIdx = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/icons/quran.png")),
                label: lang.quran),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/icons/hadith.png")),
                label: lang.hadith),
            BottomNavigationBarItem(
                icon:
                    const ImageIcon(AssetImage("assets/icons/sebha_blue.png")),
                label: lang.tasbeh),
            BottomNavigationBarItem(
                icon:
                    const ImageIcon(AssetImage("assets/icons/radio_blue.png")),
                label: lang.radio),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings), label: lang.settings),
          ],
        ),
      ),
    );
  }
}
