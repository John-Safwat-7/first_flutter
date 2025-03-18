import 'package:flutter/material.dart';
import 'package:sec/FirstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tree Info',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Firstscreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final String body;

  const MyHomePage({required this.title,required this.body,super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text("The $title"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/tree.jpg"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FavoriteWidget(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                ],
              ),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                 body,
                  textAlign: TextAlign.justify, 
                  
          
          
          
                  ) ,  ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MySeasons(text: "Spring", url: "assets/spring_tree.jpg"),
                  MySeasons(text: "Fall", url: "assets/fall_tree.jpg"),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.next_plan,
          ),
        ));
  }
}

class MySeasons extends StatelessWidget {
  final String url;
  final String text;
  const MySeasons({required this.text, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(height: 100, width: 100, fit: BoxFit.cover, url),
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 25)),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget{
  const FavoriteWidget({super.key});
  
  @override
  State<StatefulWidget> createState() => _FavoriteWidgetState();
    
}
class _FavoriteWidgetState extends State<FavoriteWidget>{

    bool click=false;


  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        click=!click;
      });
    }, icon:  Icon(Icons.favorite,color: click ? Colors.red : Colors.black, ));

  }
  
}
