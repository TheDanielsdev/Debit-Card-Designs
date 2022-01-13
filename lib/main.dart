import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: const EdgeInsets.only(top: 50),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset('assets/card body.svg'),
                    SvgPicture.asset('assets/card design.svg'),
                    Positioned(
                      top: 70,
                      left: 50,
                      child: SvgPicture.asset(
                        'assets/card chip.svg',
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 30,
                      child: SvgPicture.asset(
                        'assets/card text.svg',
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    SvgPicture.asset('assets/horizontal card.svg'),
                    const Positioned(
                      top: 80,
                      left: 30,
                      child: Text(
                        '1199 8344 6077 4039',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 100,
                      left: 20,
                      child: Text(
                        'Adeyemi Favour Abiodun',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      right: 20,
                      child: Text(
                        '02/24',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
