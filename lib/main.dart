import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://hentaigifz.com/content/2022/02/pics_001-1.webp"),
                fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "please input your full name ",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontFamily: ""),
                ),
              ),
              Text(
                "holla erikkun",
                style: GoogleFonts.lato(),
              ),
              Text(
                "MATA ASHITA また あした",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
