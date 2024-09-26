import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<String> _languages = ["English", "عربي"];
  List<String> _theme = ["Light", "Dark"];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var mediaQuery = MediaQuery.of(context);
    double screenHeight = mediaQuery.size.height;
    double screenWidth = mediaQuery.size.width;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 20, vertical: screenHeight * .15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            lang.language,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomDropdown<String>(
            items: _languages,
            initialItem:
                provider.curLanguage == "en" ? _languages[0] : _languages[1],
            onChanged: (value) {
              if (value == "English") {
                provider.changeLanguage("en");
              } else if (value == "عربي") {
                provider.changeLanguage("ar");
              }
            },
            decoration: CustomDropdownDecoration(
              expandedFillColor:
                  Color(provider.isDark() ? 0xFF141A2E : 0xFFFFFFFF),
              closedFillColor:
                  Color(provider.isDark() ? 0xFF141A2E : 0xFFFFFFFF),
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down,
                color: Color(provider.isDark() ? 0xFFFACC1D : 0xFFB7935F),
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up,
                color: Color(provider.isDark() ? 0xFFFACC1D : 0xFFB7935F),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            lang.theme_mode,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomDropdown<String>(
            items: _theme,
            initialItem: provider.curThemeMode == ThemeMode.light
                ? _theme[0]
                : _theme[1],
            onChanged: (value) {
              if (value == "Light") {
                provider.changeThemeMode(ThemeMode.light);
              } else if (value == "Dark") {
                provider.changeThemeMode(ThemeMode.dark);
              }
            },
            decoration: CustomDropdownDecoration(
              closedFillColor:
                  Color(provider.isDark() ? 0xFF141A2E : 0xFFFFFFFF),
              expandedFillColor:
                  Color(provider.isDark() ? 0xFF141A2E : 0xFFFFFFFF),
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down,
                color: Color(provider.isDark() ? 0xFFFACC1D : 0xFFB7935F),
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up,
                color: Color(provider.isDark() ? 0xFFFACC1D : 0xFFB7935F),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
