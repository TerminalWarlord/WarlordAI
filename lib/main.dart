import 'package:ai_chat/screens/chat/chat_screen.dart';
import 'package:ai_chat/screens/home/tabs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFFFFFFF),
);
final kColorSchemeDark = ColorScheme.fromSeed(
  seedColor: const Color(0xFFE6E6E6),
  brightness: Brightness.dark,
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
        colorScheme: kColorScheme, textTheme: GoogleFonts.latoTextTheme()),
    darkTheme: ThemeData().copyWith(
      colorScheme: kColorSchemeDark,
      textTheme: GoogleFonts.latoTextTheme(),
    ),
    home: const ChatScreen(),
  ));
}
