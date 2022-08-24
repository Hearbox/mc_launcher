import 'package:flutter/material.dart';
import 'package:mc_launcher/views/home/views/mods/components/mod_card.dart';

class ModPackView extends StatefulWidget {
  const ModPackView({ Key? key }) : super(key: key);

  @override
  State<ModPackView> createState() => _ModPackViewState();
}

class _ModPackViewState extends State<ModPackView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.vertical,
        child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          ModCard(banner: 'assets/banners/TortillaLand.png'),
          ModCard(banner: 'assets/banners/SawMinecraftGames.png'),
          ModCard(banner: 'assets/banners/SquidCraftGames.png'),
        ]
      ),
    );
  }
}