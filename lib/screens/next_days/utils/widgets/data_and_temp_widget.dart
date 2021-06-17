import 'package:flutter/material.dart';

class DateAndTempContainer extends StatefulWidget {
  const DateAndTempContainer({key}) : super(key: key);

  @override
  _DateAndTempContainerState createState() => _DateAndTempContainerState();
}

class _DateAndTempContainerState extends State<DateAndTempContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Today',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Wed, 3 Dec',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '-1',
                style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '°C',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
