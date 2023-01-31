import 'package:bubble/bubble.dart';
import 'package:darkness_of_japanese/buildAppbar.dart';
import 'package:darkness_of_japanese/mainPage.dart';
import 'package:darkness_of_japanese/motorcycle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'appColor.dart';
import 'login.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'login.dart';

class MyMotorcycle extends StatefulWidget {
  const MyMotorcycle({Key? key, this.myMotor, this.kmInformation})
      : super(key: key);
  final myMotor;
  final kmInformation;

  @override
  State<MyMotorcycle> createState() => _MyMotorcycleState();
}

class _MyMotorcycleState extends State<MyMotorcycle> {
  Color cardColor = Color.fromARGB(255, 183, 74, 74);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: buildAppbar(context, 1),
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SafeArea(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: const Size(40, 40),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  C1,
                  C2,
                  C3,
                  C4,
                ],
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    newMethod(
                        context,
                        "${widget.myMotor.title}",
                        "${widget.myMotor.description}",
                        "${widget.myMotor.engine}",
                        "${widget.myMotor.cylinders}",
                        "${widget.myMotor.horsePower}",
                        "${widget.myMotor.torq}",
                        "${widget.myMotor.image}",
                        "${widget.myMotor.website}",
                        "${widget.kmInformation} KM until nex Service"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Center newMethod(
    BuildContext context,
    String title,
    String description,
    String engine,
    String cylinders,
    String horsePower,
    String torq,
    String image,
    String website,
    String km,
  ) {
    return Center(
      child: Container(
        alignment: Alignment.bottomCenter,
        width: 320,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                alignment: Alignment.center,
                width: 360,
                color: cardColor,
                child: Text(
                  "My Bike",
                  style: TextStyle(
                    fontFamily: "Lobster",
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  overlayColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {},
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(image)),
              ),
            ),
            Container(
              width: 300,
              child: const Divider(
                color: Colors.black,
                height: 20,
              ),
            ),
            Text(
              "$title",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(height: 5),
            Text("$description",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            Container(
              width: 300,
              child: const Divider(
                color: Colors.black,
                height: 20,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: cardColor,
              child: ListTile(
                leading: const Icon(
                  Icons.build_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  km,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: cardColor,
              child: ListTile(
                leading: const Icon(
                  MdiIcons.engine,
                  color: Colors.black,
                ),
                title: Text(
                  "Engine: $engine ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: cardColor,
              child: ListTile(
                leading: const Icon(
                  MdiIcons.speedometer,
                  color: Colors.black,
                ),
                title: Text(
                  "Number of Cylinders: $cylinders ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: cardColor,
              child: ListTile(
                leading: const Icon(
                  MdiIcons.horse,
                  color: Colors.black,
                ),
                title: Text(
                  "Horsepower: $horsePower HP",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: cardColor,
              child: ListTile(
                leading: const Icon(
                  Icons.directions_bike_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Torq: $torq NM",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launchUrlString("$website");
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(30)),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: cardColor,
                  child: ListTile(
                    leading: const Icon(
                      Icons.laptop_chromebook_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      "More Info",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
