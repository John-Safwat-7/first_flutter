import 'package:flutter/material.dart';
import 'package:sec/main.dart';

// ignore: must_be_immutable
class Firstscreen extends StatefulWidget {
  Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<Firstscreen> {
  TextEditingController title = TextEditingController();
  TextEditingController body = TextEditingController();

  @override
  void dispose() {
    body.dispose();
    title.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(

          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/tree2.jpg"))
          ),
          child: Column(
            children: [
              const SizedBox(height: 150,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  minLines: 3,
                  maxLines: 7,
                  controller: title,
                  decoration: const InputDecoration(
                      hintText: "title", border: OutlineInputBorder()),
                ),
              ),
              TextField(
                minLines: 3,
                maxLines: 7,
                controller: body,
                decoration: const InputDecoration(
                    hintText: "body", border: OutlineInputBorder()),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.save),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(
                            title: title.text,
                            body: body.text,
                          )));
            }));
  }
}
