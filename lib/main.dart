import 'package:flutter/material.dart';

main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  String text =
      "Some text here jf;sajdf;asdjf ksj f;jasd kf;sadjfdklsfj;dskj ;sdjf kdsja f; j";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 174, 77),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.green, width: 5),
                ),
                child: Center(child: Text('Simple Text')),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.yellow,
                child: Column(
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print("TextButton clicked");
                          },
                          child: Text('Click Me'),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Elevated button clicked');
                      },
                      child: Text("Click me 2nd"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: Column(
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print("TextButton clicked");
                          },
                          child: Text('Click Me'),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Elevated button clicked');
                      },
                      child: Text("Click me 2nd"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
