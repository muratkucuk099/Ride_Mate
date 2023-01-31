import 'package:animated_text_kit/animated_text_kit.dart';
import 'appColor.dart';
import 'buildAppbar.dart';
import 'package:flutter/material.dart';
import 'package:darkness_of_japanese/mainPage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color cardColor = Color.fromARGB(255, 183, 74, 74);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 13, 59, 96),
        ),
      ),
      home: Scaffold(
        appBar: buildAppbar(context, 0),
        body: SafeArea(
          child: Center(
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
              child: LayoutBuilder(
                builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: CircleAvatar(
                                radius: 150,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  'assets/images/dark.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              child: const Divider(
                                height: 10,
                                color: Colors.yellow,
                              ),
                            ),
                            SizedBox(height: 40),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  ColorizeAnimatedText(
                                    'Welcome to YAMAHA WORLD',
                                    textAlign: TextAlign.center,
                                    textStyle: TextStyle(
                                      fontFamily: 'Lobster',
                                      color: Color.fromARGB(255, 62, 48, 35),
                                      fontSize: 32,
                                    ),
                                    speed: const Duration(milliseconds: 650),
                                    colors: colorizeColors,
                                  ),
                                ],
                                totalRepeatCount: 6,
                                pause: const Duration(milliseconds: 1000),
                                displayFullTextOnTap: true,
                                stopPauseOnTap: true,
                              ),
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage())),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 80),
                                color: cardColor,
                                child: ListTile(
                                  leading: const Icon(
                                    Icons.motorcycle,
                                    color: Colors.black,
                                  ),
                                  title: Text("Lets ride"),
                                  textColor: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
