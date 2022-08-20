import 'package:code/screens/levelsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 186, 62),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 0, bottom: 0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const Image(
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/watercolor-mobile-background-yellow-blue-desktop-wallpaper-abstract-design_53876-145673.jpg?w=740&t=st=1659633979~exp=1659634579~hmac=11728bfbda9de07aeeead5fdd2db2dd2853cd129866f90db1a642a4ed2373dac"),
                ),
                const Text(
                  'quizzy',
                  style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      fontFamily: 'Rubik Dirt'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'test your knowledge',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Rubik Dirt'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 14, 196, 177))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const levelsScreen();
                        }));
                      },
                      child: const Text(
                        'play',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Rubik Dirt'),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
