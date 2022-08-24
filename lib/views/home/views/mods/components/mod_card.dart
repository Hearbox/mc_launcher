import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ModCard extends StatefulWidget {

  final String banner;


  ModCard({
    required this.banner,
    Key? key
  }) : super(key: key);

  @override
  State<ModCard> createState() => _ModCardState();
}

class _ModCardState extends State<ModCard> {
  final Random _random = Random();
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => {
        setState(() => isHovered = value)
      },
      onTap: () => {},
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 250,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: NetworkImage("https://feedback.minecraft.net/hc/article_attachments/5992809822861/beta19_5_16x9.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1.5,
                    sigmaY: 1.5
                  ),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.05))
                  )
                ),
              ),
            )
          ),
          if(isHovered)
          Container(
            width: 250,
            height: 200,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Color.fromARGB(94, 0, 0, 0),
              borderRadius: BorderRadius.circular(5)
            ),
          ),
          Container(
            width: 250,
            height: 200,
            padding: const EdgeInsets.all(40),
            child: Image(
              image: AssetImage(widget.banner),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5)
            ),
          ),
          Container(
            width: 20,
            height: 20,
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(10),
            child: const Icon(Icons.lock_outline_rounded),
          ),
        ],
      ),
    );
  }
}