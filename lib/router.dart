import 'package:flutter/material.dart';
import 'package:mc_launcher/views/home/home.dart';
import 'package:mc_launcher/views/splash/splash.dart';

import 'components/mcolors.dart';

class MRouter extends StatefulWidget {
  const MRouter({ Key? key }) : super(key: key);

  @override
  State<MRouter> createState() => _RouterState();
}

class _RouterState extends State<MRouter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MC Launcher',
      initialRoute: "/home",
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.from(
        colorScheme: const ColorScheme.dark(
          background: MColors.background
        )
      ),
      routes: {
        '/':     (context) => const Splash(),
        '/home': (context) => const Home(),
      },
    );
  }
}