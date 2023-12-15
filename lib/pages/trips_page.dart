import 'package:admin_waiu_web_panel/methods/common_nethods.dart';
import 'package:flutter/material.dart';

class TripsPage extends StatefulWidget
{
  static const String id = "\webPageTrips";
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage>
{

  CommonMethods cMethods = CommonMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Manage Trips",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 18,),

            Row(
              children: [
                cMethods.header(2, "TRIP ID"),
                cMethods.header(1, "USER NAME"),
                cMethods.header(1, "DRIVER NAME"),
                cMethods.header(1, "CAR DETAILS"),
                cMethods.header(1, "TIMING"),
                cMethods.header(1, "FARE"),
                cMethods.header(1, "VIEW DETAILS"),
              ],
            ),

            ///Display Data


          ],
        ),
      ),
    );
  }
}
