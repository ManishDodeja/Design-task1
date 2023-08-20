import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        child: Row(
          children: [
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text(
                    "Strawberry Pavlova",
                    style: TextStyle(
                      backgroundColor: Color.fromARGB(255, 117, 163, 200),
                    ),
                  ),
                  const Text('\n'),
                  const Text(
                    " a dessert of Australian and New Zealand origin consisting of a meringue shell topped with whipped cream and usually fruit.",
                    style: TextStyle(
                      backgroundColor: Color.fromARGB(255, 117, 163, 200),
                    ),
                  ),
                  const Text('\n'),
                  Row(
                    children: const [
                      RatingWidget(),
                      Text('170 Reviews'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 600,
              child: Image.asset("assets/strawberry2.jpeg",
                  height: 2000, fit: BoxFit.contain),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingWidget extends StatefulWidget {
  const RatingWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              _rating = index + 1;
            });
          },
          child: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            size: 40,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
