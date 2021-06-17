import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Stack(
        children: [
          Positioned(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  Icons.chevron_left_rounded,
                  size: 28,
                ),
              ),
            ),
            left: 0,
            top: 0,
            bottom: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Delhi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                ',India',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Positioned(
            child: Container(
              child: Icon(
                Icons.menu_rounded,
                size: 28,
              ),
            ),
            right: 0,
            top: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
