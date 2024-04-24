import 'package:flutter/material.dart';
import 'package:second_example/word.dart';
import 'package:second_example/word_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SE3',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Word> words = [
    Word(
      arabicName: "مدرسة",
      englishName: "School",
      icon: Icons.school,
    ),
    Word(
      arabicName: "قلم",
      englishName: "Pen",
      icon: Icons.edit,
    ),
    Word(
      arabicName: "كتاب",
      englishName: "Book",
      icon: Icons.book,
    ),
    Word(
      arabicName: "ساعة",
      englishName: "Clock",
      icon: Icons.access_time_sharp,
    ),
    Word(
      arabicName: "طائرة",
      englishName: "Airplane",
      icon: Icons.airplanemode_on,
    ),
    Word(
      arabicName: "صورة",
      englishName: "Photo",
      icon: Icons.photo,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "APP BAR",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: GridView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Icon(words[index].icon),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WordScreen(word: words[index]),
                ),
              );
            },
          );
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      ),
    );
  }
}
