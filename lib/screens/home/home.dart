import 'dart:math';
import 'package:flutter/material.dart';
import 'package:suvidha_climate_app/screens/home/utils/widgets/appbar.dart';
import 'package:suvidha_climate_app/screens/home/utils/widgets/climate_info_container.dart';
import 'package:suvidha_climate_app/screens/home/utils/widgets/data_and_temp_widget.dart';
import 'package:suvidha_climate_app/screens/next_days/next_days.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111730),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/snowfall.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            TopAppBar(),
            DateAndTempContainer(),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Tomorrow',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NextDaysScreen()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              color: Colors.black.withOpacity(0.33),
                            ),
                            child: Text(
                              'Next 7 Days >',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Container(
                    height: 175,
                    child: ListView(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        24,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              Text(
                                (index == 0) ? 'Now' : '$index AM',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: (index == 0)
                                      ? Colors.white
                                      : Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: (index == 0)
                                          ? Colors.black
                                          : Colors.white,
                                      width: 1),
                                ),
                                margin: EdgeInsets.symmetric(vertical: 6),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 12),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.wb_cloudy_outlined,
                                      color: (index == 0)
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '${Random().nextInt(12)}',
                                          style: TextStyle(
                                              color: (index == 0)
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '°',
                                          style: TextStyle(
                                            color: (index == 0)
                                                ? Colors.black
                                                : Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ClimateInfoContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
