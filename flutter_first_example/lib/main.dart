import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SE3',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: listOfColors,
            ),
          ),
          child: const Text(
            "APP BAR",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: listOfColors.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("${index + 1}")));
            },
            leading: Text("${index + 1}"),
            trailing: const Icon(Icons.ads_click),
            tileColor: listOfColors[index],
          );
        },
      ),
    );
  }
}
