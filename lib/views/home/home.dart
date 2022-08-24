import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:mc_launcher/views/home/views/mods/mods.dart';

class HomeChild {
  final String title;
  final IconData icon;
  final Widget child;

  const HomeChild({
    required this.title,
    required this.icon,
    required this.child,
  });
}

class Home extends StatefulWidget {

  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<HomeChild> views = [
    const HomeChild(
      title: 'Mods',
      icon: Icons.folder_copy_rounded,
      child: ModPackView(),
    ),
    const HomeChild(
      title: 'Settings',
      icon: Icons.settings,
      child: Text('Settings'),
    ),
  ];

  late List<CollapsibleItem> _items;
  late HomeChild _selected;

  @override
  void initState() {
    _items = views.map((view) => CollapsibleItem(
      isSelected: view == views.first,
      text: view.title,
      icon: view.icon,
      onPressed: () {
        setState(() {
          _selected = view;
        });
      },
    )).toList();

    _selected = views.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CollapsibleSidebar(
        showToggleButton: false,
        avatarBorderRadius: 2,
        borderRadius: 5,
        sidebarBoxShadow: [],
        backgroundColor: const Color(0xFF212529),
        forceExpanded: true,
        maxWidth: 230,
        screenPadding: 0,
        isCollapsed: false,
        items: _items,
        avatarImg: const NetworkImage('https://mc-heads.net/avatar/Notch'),
        title: 'Hearbox',
        body: Padding(
          padding: const EdgeInsets.only(left: 150, top: 10, right: 10, bottom: 10),
          child: _selected.child,
        ),
        children: const [
          Center(child: Padding(padding: EdgeInsets.only(bottom: 10), child: Placeholder( fallbackHeight: 120 )))
        ],
      ),
    );
  }
}