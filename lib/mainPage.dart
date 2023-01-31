import 'package:bubble/bubble.dart';
import 'package:darkness_of_japanese/motorcycle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:darkness_of_japanese/buildAppbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:darkness_of_japanese/MainMotorcycle.dart';
import 'appColor.dart';
import 'login.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                      MaterialPageRoute(builder: (context) => const Login()),
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
              child: const Anasayfa()),
        ),
      ),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  Color cardColor = Color.fromARGB(255, 183, 74, 74);
  int permission = 0;
  TextEditingController textController = TextEditingController();
  String kmInformation = "";
  motorcycle myMotor = motorcycle();
  motorcycle mt25 = motorcycle();
  motorcycle mt07 = motorcycle();
  motorcycle mt09sp = motorcycle();
  motorcycle mt10sp = motorcycle();
  motorcycle r25 = motorcycle();
  motorcycle r6 = motorcycle();
  motorcycle r7 = motorcycle();
  motorcycle r1m = motorcycle();
  @override
  Widget build(BuildContext context) {
    mt25.title = "MT25";
    mt25.description =
        "Inspired by Yamaha’s larger Hyper Naked designs, the aggressive look features more MT than ever before. The new double-eyed head design, Upside Down (USD) shock absorbers and wide-shoulder fuel tank highlight the dynamic MT family look, revealing these top 250 models! \n But what makes this lightweight Hyper Naked attractive and desirable is that it is actually made with pure MT DNA. In this way, every ride turns into an exciting and addictive experience. You will want to go out and ride your motorcycle at every opportunity. Because this motorcycle is a motorcycle you will enjoy riding.";
    mt25.engine = "249 CC";
    mt25.cylinders = "2";
    mt25.horsePower = "36";
    mt25.torq = "26.6";
    mt25.image = "assets/images/mt25.jpg";
    mt25.website = "https://bit.ly/3w3iLb6";
    mt25.service = 5000;

    mt07.title = "MT07";
    mt07.description =
        "The latest model is equipped with a 5-inch TFT display with interchangeable display styles and smartphone connectivity. The improved EU5 compatible engine responds more strongly to you with a spectacular exhaust sound. \n MT-07 is a model that attracts attention with its style. Its remarkable body is equipped with dual wing type air intake and compact LED lights that offer a bold and futuristic look with the same genes as every Yamaha Hyper Naked. It is the most advanced motorcycle of all time with its natural ergonomics, accessible saddle height and flexible driving position.";
    mt07.engine = "689 CC";
    mt07.cylinders = "2";
    mt07.horsePower = "73.6";
    mt07.torq = "68";
    mt07.image = "assets/images/mt07.jpg";
    mt07.website = "https://bit.ly/3izqKd8";
    mt07.service = 7500;

    mt09sp.title = "MT09 SP";
    mt09sp.description =
        "The 890 cc EU5 CP3 engine produces even higher linear torque at lower revs for spectacular acceleration, while the R1 type 6-axis IMU and tilt angle-sensitive electronic drive assistance features give you precise control over wet, dry ground. With fully adjustable 41mm front shock absorber forks and advanced technical Öhlins rear shock absorber, the chassis of the MT-09 SP has a sharper appearance than ever. \n The MT-09 SP is equipped with exclusive Icon Performance colors as well as a custom double stitched saddle for perfect fit. Brushed and anodized rear tongs, anodized black handlebars and mannets and open smoked brake reservoirs contribute to the premium look and feel of the model.";
    mt09sp.engine = "890";
    mt09sp.cylinders = "3";
    mt09sp.horsePower = "115.5";
    mt09sp.torq = "87";
    mt09sp.image = "assets/images/mt09sp.jpg";
    mt09sp.website = "https://bit.ly/3GupG1S";
    mt09sp.service = 7500;

    mt10sp.title = "MT10 SP";
    mt10sp.description =
        "This powerful and iconic Naked sports motorcycle is the first in the world to feature Öhlins' 6-mode electronically controlled reel valve suspension. In semi-active mode, the damping force is automatically adjusted to the driving conditions and provides the highest level of chassis precision during braking, acceleration and cornering. \n Equipped with a 6-axis Inertial Measurement Unit (IMU), which controls traction, shifts, one-wheel drive, engine brake and braking power to give you full advantage of the increased power and torque of the 998 cc engine. Exclusive MT-10 SP equipment includes a 3-piece bottom coating and braided brake hoses, and with its racing-inspired dynamic Icon Performance color and premium finish, the MT-10 SP has all the features you’re looking for.";
    mt10sp.engine = "998";
    mt10sp.cylinders = "4";
    mt10sp.horsePower = "150.4";
    mt10sp.torq = "111";
    mt10sp.image = "assets/images/mt10sp.jpg";
    mt10sp.website = "https://bit.ly/3W7Saoa";
    mt10sp.service = 10000;

    r25.title = "R25";
    r25.description =
        "The r25's slim and athletic body is equipped with a central air intake inspired by Yamaha's iconic racing-digging M1 MotoGP® motorcycle. Underlining purebred R-Class genes with its radical beautiful appearance, aerodynamic racing style frame and aggressive dual LED headlights, this motorcycle is the most desirable 300 on the street or track. \n The 37mm KYB Upside Down (USD) front shock absorbers with high specifications provide precise suspension sensation and responsiveness, while low handlebars with low fuel tank provide the r25 with precise control, exceptional comfort and an ergonomic driving position. Now you are ready to step into the R World.";
    r25.engine = "249 CC";
    r25.cylinders = "2";
    r25.horsePower = "36";
    r25.torq = "26.6";
    r25.image = "assets/images/r25.jpg";
    r25.website = "https://bit.ly/3vUuA3D";
    r25.service = 5000;

    r6.title = "R6";
    r6.description =
        "The aggressive-looking R6, which has all the characteristics of its aerodynamic body and Yamaha's purebred R-Class DNA, is the last point reached in 600 supersports. \n The low fuel tank and handlebar position provide excellent driver ergonomics to provide superior driving comfort and precise control, while the new 43mm upside down front shock absorbers with advanced features give enhanced suspension feel and responsiveness. Answer the call and enter the world of R-World.";
    r6.engine = "599 CC";
    r6.cylinders = "4";
    r6.horsePower = "124";
    r6.torq = "65.7";
    r6.image = "assets/images/r6.jpg";
    r6.website = "https://bit.ly/3GAuOBK";
    r6.service = 5000;

    r7.title = "R7";
    r7.description =
        "The live 689 cc CP2 engine with A&S clutch provides high torque acceleration for an exciting real driving experience on the track and on the road. The extremely narrow and streamlined body features an aggressive double-eyed front design with a powerful mid-LED headlight, and the sharp rear tail and deep-designed tank are shaped by pure R-Class genes. The R7's high technical brakes and suspension provide optimal control over cornering and braking. \n The front design of the R7 is the most compact of the R series models, resulting in high aerodynamic efficiency. In addition, the handlebars, driver's foot steps and saddle position ensure both a comfortable and sporty driving position. This superior next-generation Supersport makes the R World a reality for thrill-seeking drivers like you, whether on the track or on the road.";
    r7.engine = "689 CC";
    r7.cylinders = "2";
    r7.horsePower = "73.4";
    r7.torq = "68";
    r7.image = "assets/images/r7.jpg";
    r7.website = "https://bit.ly/3GZP2Gm";
    r7.service = 7500;

    r1m.title = "R1M";
    r1m.description =
        "Yamaha produced the race-oriented R1M using some of the most advanced technologies in the race-winning M1 MotoGP motorcycle. The state-of-the-art Öhlins Electronic Racing Suspension (ERS) with NPX anti-cavitation gas front shock absorber forks delivers your best performance on every track and helps you shorten narrow front-designed carbon body lap times. \n However, what really makes the R1M groundbreaking are high-tech driver assistance features such as Brake Control, Engine Brake Management and Takeoff Control, as well as the Communication Controller, which can keep data logs and provides wireless engine tuning. Available in revamped carbon and black Icon Performance with blue accents and blue wheels, the R1M is the ultimate R-Class that offers the most complete racetrack suite.";
    r1m.engine = "998 CC";
    r1m.cylinders = "4";
    r1m.horsePower = "200";
    r1m.torq = "112.4";
    r1m.image = "assets/images/r1m.jpg";
    r1m.website = "https://bit.ly/3XoMCq9";
    r1m.service = 10000;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 5.0, top: 5.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Choose Your Bike",
                  style: TextStyle(
                    fontFamily: "Lobster",
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            topRigthMethod("NAKED"),
            newMethod(
              context,
              "${mt25.title}",
              "${mt25.description}",
              "${mt25.engine}",
              "${mt25.horsePower}",
              "${mt25.torq}",
              "${mt25.image}",
              "${mt25.website}",
              mt25,
            ),
            topRigthMethod("NAKED"),
            newMethod(
                context,
                "${mt07.title}",
                "${mt07.description}",
                "${mt07.engine}",
                "${mt07.horsePower}",
                "${mt07.torq}",
                "${mt07.image}",
                "${mt07.website}",
                mt07),
            topRigthMethod("NAKED"),
            newMethod(
                context,
                "${mt09sp.title}",
                "${mt09sp.description}",
                "${mt09sp.engine}",
                "${mt09sp.horsePower}",
                "${mt09sp.torq}",
                "${mt09sp.image}",
                "${mt09sp.website}",
                mt09sp),
            topRigthMethod("NAKED"),
            newMethod(
                context,
                "${mt10sp.title}",
                "${mt10sp.description}",
                "${mt10sp.engine}",
                "${mt10sp.horsePower}",
                "${mt10sp.torq}",
                "${mt10sp.image}",
                "${mt10sp.website}",
                mt10sp),
            topRigthMethod("Racing"),
            newMethod(
                context,
                "${r25.title}",
                "${r25.description}",
                "${r25.engine}",
                "${r25.horsePower}",
                "${r25.torq}",
                "${r25.image}",
                "${r25.website}",
                r25),
            topRigthMethod("Racing"),
            newMethod(
                context,
                "${r6.title}",
                "${r6.description}",
                "${r6.engine}",
                "${r6.horsePower}",
                "${r6.torq}",
                "${r6.image}",
                "${r6.website}",
                r6),
            topRigthMethod("Racing"),
            newMethod(
                context,
                "${r7.title}",
                "${r7.description}",
                "${r7.engine}",
                "${r7.horsePower}",
                "${r7.torq}",
                "${r7.image}",
                "${r7.website}",
                r7),
            topRigthMethod("Racing"),
            newMethod(
                context,
                "${r1m.title}",
                "${r1m.description}",
                "${r1m.engine}",
                "${r1m.horsePower}",
                "${r1m.torq}",
                "${r1m.image}",
                "${r1m.website}",
                r1m),
          ],
        ),
      ),
    );
  }

  Container topRigthMethod(String type) {
    return Container(
      alignment: Alignment.centerRight,
      width: 280,
      child: Bubble(
        style: const BubbleStyle(nip: BubbleNip.rightTop),
        color: Color.fromARGB(231, 1, 4, 49),
        child: Text(
          "$type",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
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
    String horsePower,
    String torq,
    String image,
    String website,
    motorcycle motor,
  ) {
    return Center(
      child: Container(
        alignment: Alignment.bottomCenter,
        width: 300,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  overlayColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "$title",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 32),
                            ),
                            SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 5, color: cardColor),
                                  borderRadius: BorderRadius.circular(30)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset("$image")),
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
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              color: cardColor,
                              child: ListTile(
                                leading: const Icon(
                                  MdiIcons.road,
                                  color: Colors.black,
                                ),
                                title: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: cardColor)),
                                  child: TextFormField(
                                    controller: textController,
                                    keyboardType: TextInputType.phone,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                      hintText: "Enter Km:",
                                      hintStyle: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                myMotor = motor;
                                int? kmInformation;

                                try {
                                  kmInformation = myMotor.service -
                                      ((int.tryParse(textController.text)!) %
                                          myMotor.service);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyMotorcycle(
                                            kmInformation: kmInformation,
                                            myMotor: myMotor)),
                                  );
                                } catch (e) {
                                  kmInformation = null;
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(width: 5, color: cardColor),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  color: cardColor,
                                  child: ListTile(
                                    title: Text(
                                      "Add to Profile",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
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
                    ),
                  );
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(image)),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                alignment: Alignment.center,
                width: 280,
                color: cardColor,
                child: Text(
                  "$title",
                  style: TextStyle(
                    fontFamily: "Lobster",
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: const Divider(
                color: Colors.black,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
