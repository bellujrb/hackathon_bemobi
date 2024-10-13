import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  // Basic Colors
  static Color get black => const Color(0xFF0B0C12);
  static Color get white => const Color(0xFFFFFFFF);

  // Gray Shades
  static Color get gray100 => const Color(0xFFF5F6F7);
  static Color get gray150 => const Color(0xFFEBECF0);
  static Color get gray200 => const Color(0xFFDFE0E5);
  static Color get gray300 => const Color(0xFFC7C8D1);
  static Color get gray400 => const Color(0xFFA3A5B1);
  static Color get gray500 => const Color(0xFF828594);
  static Color get gray600 => const Color(0xFF686B7A);
  static Color get gray700 => const Color(0xFF494C59);
  static Color get gray800 => const Color(0xFF323440);
  static Color get gray850 => const Color(0xFF21232E);
  static Color get gray900 => const Color(0xFF15171F);

  // Primary Colors
  static Color get primary100 => const Color(0xFFF5F7FE);
  static Color get primary200 => const Color(0xFFE0E6FF);
  static Color get primary300 => const Color(0xFFB2C1FF);
  static Color get primary400 => const Color(0xFF859CFF);
  static Color get primary500 => const Color(0xFF5778FF);
  static Color get primary600 => const Color(0xFF2B53F7);
  static Color get primary700 => const Color(0xFF0F36D7);
  static Color get primary800 => const Color(0xFF06239D);
  static Color get primary900 => const Color(0xFF04165D);

  // Red Shades
  static Color get red100 => const Color(0xFFFCE3E3);
  static Color get red200 => const Color(0xFFF8C1C1);
  static Color get red300 => const Color(0xFFF09A9A);
  static Color get red400 => const Color(0xFFE46363);
  static Color get red500 => const Color(0xFFCB2F2F);
  static Color get red600 => const Color(0xFFAA1414);
  static Color get red700 => const Color(0xFF8F0D0D);
  static Color get red800 => const Color(0xFF7A0E0E);
  static Color get red900 => const Color(0xFF6A0A0A);

  // Orange Shades
  static Color get orange100 => const Color(0xFFFFF2E8);
  static Color get orange200 => const Color(0xFFFFE1CB);
  static Color get orange300 => const Color(0xFFFFC69D);
  static Color get orange400 => const Color(0xFFFDA666);
  static Color get orange500 => const Color(0xFFEB8336);
  static Color get orange600 => const Color(0xFFD26A1C);
  static Color get orange700 => const Color(0xFFBA560B);
  static Color get orange800 => const Color(0xFFA74903);
  static Color get orange900 => const Color(0xFF964000);

  // Yellow Shades
  static Color get yellow100 => const Color(0xFFFFF5D7);
  static Color get yellow200 => const Color(0xFFFFEEBA);
  static Color get yellow300 => const Color(0xFFFFE492);
  static Color get yellow400 => const Color(0xFFFFD76E);
  static Color get yellow500 => const Color(0xFFF5C445);
  static Color get yellow600 => const Color(0xFFE7AE1A);
  static Color get yellow700 => const Color(0xFFCD9A14);
  static Color get yellow800 => const Color(0xFFB18512);
  static Color get yellow900 => const Color(0xFF967214);

  // Military Green Shades
  static Color get militaryGreen100 => const Color(0xFFF0FFE1);
  static Color get militaryGreen200 => const Color(0xFFE2FDC7);
  static Color get militaryGreen300 => const Color(0xFFCAF3A2);
  static Color get militaryGreen400 => const Color(0xFFB0E37C);
  static Color get militaryGreen500 => const Color(0xFF8EC657);
  static Color get militaryGreen600 => const Color(0xFF73A83E);
  static Color get militaryGreen700 => const Color(0xFF5E8D2E);
  static Color get militaryGreen800 => const Color(0xFF507C24);
  static Color get militaryGreen900 => const Color(0xFF426C18);

  // Green Shades
  static Color get green100 => const Color(0xFFE1FFE1);
  static Color get green200 => const Color(0xFFC7FDC7);
  static Color get green300 => const Color(0xFFA2F3A2);
  static Color get green400 => const Color(0xFF7CE37C);
  static Color get green500 => const Color(0xFF57C657);
  static Color get green600 => const Color(0xFF3EA83E);
  static Color get green700 => const Color(0xFF2E8D2E);
  static Color get green800 => const Color(0xFF247C24);
  static Color get green900 => const Color(0xFF186C18);

  // Jungle Green Shades
  static Color get jungleGreen100 => const Color(0xFFE1FFF0);
  static Color get jungleGreen200 => const Color(0xFFC7FDE2);
  static Color get jungleGreen300 => const Color(0xFFA2F3CA);
  static Color get jungleGreen400 => const Color(0xFF7CE3B0);
  static Color get jungleGreen500 => const Color(0xFF57C68E);
  static Color get jungleGreen600 => const Color(0xFF3EA873);
  static Color get jungleGreen700 => const Color(0xFF2E8D5E);
  static Color get jungleGreen800 => const Color(0xFF247C50);
  static Color get jungleGreen900 => const Color(0xFF186C42);

  // Cyan Shades
  static Color get cyan100 => const Color(0xFFE1FFFF);
  static Color get cyan200 => const Color(0xFFC7FDFD);
  static Color get cyan300 => const Color(0xFFA2F3F3);
  static Color get cyan400 => const Color(0xFF7CE3E3);
  static Color get cyan500 => const Color(0xFF57C6C6);
  static Color get cyan600 => const Color(0xFF3EA8A8);
  static Color get cyan700 => const Color(0xFF2E8D8D);
  static Color get cyan800 => const Color(0xFF247C7C);
  static Color get cyan900 => const Color(0xFF186C6C);

  // Blue Rhapsody Shades
  static Color get blueRhapsody100 => const Color(0xFFE1F0FF);
  static Color get blueRhapsody200 => const Color(0xFFC7E2FD);
  static Color get blueRhapsody300 => const Color(0xFFA2CAF3);
  static Color get blueRhapsody400 => const Color(0xFF7CB0E3);
  static Color get blueRhapsody500 => const Color(0xFF578EC6);
  static Color get blueRhapsody600 => const Color(0xFF3E73A8);
  static Color get blueRhapsody700 => const Color(0xFF2E5E8D);
  static Color get blueRhapsody800 => const Color(0xFF24507C);
  static Color get blueRhapsody900 => const Color(0xFF18426C);

  // Naval Blue Shades
  static Color get navalBlue100 => const Color(0xFFE1E1FF);
  static Color get navalBlue200 => const Color(0xFFC7C7FD);
  static Color get navalBlue300 => const Color(0xFFA2A2F3);
  static Color get navalBlue400 => const Color(0xFF7C7CE3);
  static Color get navalBlue500 => const Color(0xFF5757C6);
  static Color get navalBlue600 => const Color(0xFF3E3EA8);
  static Color get navalBlue700 => const Color(0xFF2E2E8D);
  static Color get navalBlue800 => const Color(0xFF24247C);
  static Color get navalBlue900 => const Color(0xFF18186C);

  // Purple Shades
  static Color get purple100 => const Color(0xFFF0E1FF);
  static Color get purple200 => const Color(0xFFE2C7FD);
  static Color get purple300 => const Color(0xFFCAA2F3);
  static Color get purple400 => const Color(0xFFB07CE3);
  static Color get purple500 => const Color(0xFF8E57C6);
  static Color get purple600 => const Color(0xFF733EA8);
  static Color get purple700 => const Color(0xFF5E2E8D);
  static Color get purple800 => const Color(0xFF50247C);
  static Color get purple900 => const Color(0xFF42186C);

  // Magenta Shades
  static Color get magenta100 => const Color(0xFFFFE1FF);
  static Color get magenta200 => const Color(0xFFFDC7FD);
  static Color get magenta300 => const Color(0xFFF3A2F3);
  static Color get magenta400 => const Color(0xFFE37CE3);
  static Color get magenta500 => const Color(0xFFC657C6);
  static Color get magenta600 => const Color(0xFFA83EA8);
  static Color get magenta700 => const Color(0xFF8D2E8D);
  static Color get magenta800 => const Color(0xFF7C247C);
  static Color get magenta900 => const Color(0xFF6C186C);

  // Marsala Shades
  static Color get marsala100 => const Color(0xFFFFE1F0);
  static Color get marsala200 => const Color(0xFFFDC7E2);
  static Color get marsala300 => const Color(0xFFF3A2CA);
  static Color get marsala400 => const Color(0xFFE37CB0);
  static Color get marsala500 => const Color(0xFFC6578E);
  static Color get marsala600 => const Color(0xFFA83E73);
  static Color get marsala700 => const Color(0xFF8D2E5E);
  static Color get marsala800 => const Color(0xFF7C2450);
  static Color get marsala900 => const Color(0xFF6C1842);
}
