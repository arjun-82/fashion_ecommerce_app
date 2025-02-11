import 'dart:ui';

class MainPalette {
  static const Color primary = Color(0xFF704F38);
  static const Color secondary = Color(0xFF1f2029);
  static const Color tertiary = Color(0xFFf2f0ef);

  static const Color shade10 = Color(0xFF8A6751);
  static const Color shade40 = Color(0xFFA88B76);
  static const Color shade60 = Color(0xFFC3AA97);
  static const Color shade80 = Color(0xFFE0CDC1);

  static const Color shade120 = Color(0xFF604632);
  static const Color shade140 = Color(0xFF4B3726);
  static const Color shade160 = Color(0xFF36281B);
  static const Color shade190 = Color(0xFF1C150F);
}

class Background {
  static const Color dark = Color(0xFF121212);
  static const Color light = Color(0xFFffffff);
}

class TLight {
  static const Color primary = Color(0xFF121212);
  static const Color secondary = Color(0xFF414141);
  static const Color label = Color(0xFF717171);
  static const Color link = MainPalette.shade40;
}

class TDark {
  static const Color primary = Color(0xFFffffff);
  static const Color secondary = Color(0xFFd0d0d0);
  static const Color label = Color(0xFFa0a0a0);
  static const Color link = MainPalette.primary;
}

class ElementLight {
  static const Color primary = Color(0xFF717171);
  static const Color secondary = Color(0xFFd0d0d0);
  static const Color tertiary = Color(0xFFe7e7e7);
}

class ElementDark {
  static const Color primary = Color(0xFFd0d0d0);
  static const Color secondary = Color(0xFF717171);
  static const Color tertiary = Color(0xFF414141);
}

class ButtonLight {
  static const Color iDefault = Color(0xFF2a2a2a);
  static const Color disabled = Color(0xFFa0a0a0);
  static const Color active = MainPalette.tertiary; //Color(0xFFffffff);
  static const Color primaryContainer = MainPalette.primary;
}

class ButtonDark {
  static const Color iDefault = Color(0xFFe7e7e7);
  static const Color disabled = Color(0xFF717171);
  static const Color active = MainPalette.secondary; //Color(0xFF121212);
  static const Color primaryContainer = MainPalette.shade10;
}
