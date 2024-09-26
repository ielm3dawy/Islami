import 'package:flutter/material.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:provider/provider.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraName;
  final String suraVerses;

  const SuraTitleWidget(
      {super.key, required this.suraName, required this.suraVerses});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingProvider>(context);
    var textColor =
        provider.isDark() ? const Color(0xFFC29A13) : const Color(0xFF242424);
    return Row(
      children: [
        Expanded(
            child: Text(
          suraVerses,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 37,
          child: VerticalDivider(),
        ),
        Expanded(
            child: Text(
          suraName,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
