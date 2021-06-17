import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Delhi',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                ',India',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            child: Container(
              child: Icon(
                Icons.menu_rounded,
                size: 28,
                color: Colors.white,
              ),
            ),
            right: 0,
            top: 0,
            bottom: 0,
          )
        ],
      ),
    );
  }
}
