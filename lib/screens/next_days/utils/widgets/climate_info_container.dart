import 'package:flutter/material.dart';

class ClimateInfoContainer extends StatelessWidget {
  const ClimateInfoContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(48),
          topLeft: Radius.circular(48),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TitleWithValueContainer(
                  title: 'SUNRISE',
                  value: '7:38 AM',
                ),
              ),
              Expanded(
                child: TitleWithValueContainer(
                  title: 'SUNSET',
                  value: '3:55 PM',
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: TitleWithValueContainer(
                  title: 'PRECIPITATION',
                  value: '90%',
                ),
              ),
              Expanded(
                child: TitleWithValueContainer(
                  title: 'HUMIDITY',
                  value: '77%',
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: TitleWithValueContainer(
                  title: 'WIND',
                  value: '11 km/h',
                ),
              ),
              Expanded(
                child: TitleWithValueContainer(
                  title: 'PRESSURE',
                  value: '1015 hPa',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleWithValueContainer extends StatelessWidget {
  const TitleWithValueContainer({key, this.title, this.value})
      : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
