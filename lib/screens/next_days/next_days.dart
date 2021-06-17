import 'package:flutter/material.dart';
import 'package:suvidha_climate_app/screens/next_days/utils/widgets/appbar.dart';

class NextDaysScreen extends StatelessWidget {
  const NextDaysScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F5F7),
      body: Container(
        child: Column(
          children: [
            TopAppBar(),
            DateWithTempListTile(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),
            Container(
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: HeadingWithValueContainer(
                        heading: 'Precipitation',
                        value: '70%',
                      ),
                    ),
                    Expanded(
                      child: HeadingWithValueContainer(
                        heading: 'Wind',
                        value: '8 km/h',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: HeadingWithValueContainer(
                        heading: 'Humidity',
                        value: '65%',
                      ),
                    ),
                    Expanded(
                      child: HeadingWithValueContainer(
                        heading: 'Pressure',
                        value: '940 hPa',
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                children: List.generate(
                  6,
                  (index) => Column(
                    children: [
                      DateWithTempListTile(),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class DateWithTempListTile extends StatelessWidget {
  const DateWithTempListTile({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 24),
        leading: Container(
          child: Icon(Icons.wb_cloudy_outlined),
        ),
        title: Text(
          'Friday, 5 Dec',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '-2°',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                '-7°',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingWithValueContainer extends StatelessWidget {
  const HeadingWithValueContainer({key, this.heading, this.value})
      : super(key: key);
  final String heading, value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
