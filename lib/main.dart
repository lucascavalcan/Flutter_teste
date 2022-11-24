import 'package:flutter/material.dart';

void main() => runApp( MeuApp());

class MeuApp extends StatelessWidget {
  const MeuApp({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading:Container(),
          title: Text("Tarefas"),
        ),
        body: ListView(
          children: [
            Task("Aprender Dart no café da manhã comendo sucrilhos"),
            Task("Aprender Flutter"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
            Task("Ver o jogo"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  } 

}

class Task extends StatefulWidget {
  final String name;

  const Task(this.name, {Key ? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Stack(
            children: [
              Container(
                color: Colors.blue,
                height: 140
              ),
             Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.name, 
                          style: TextStyle(
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            level++;
                          });
                          print(level);
                        }, 
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_drop_up),
                            Text(
                              "UP",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              ),
                          ],
                        ),
                        ),
                      ),
                    ],
                  )

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: level/10,
                        ),
                      width: 200,
                    )
                    ),
                    Padding(
                      padding:EdgeInsets.all(12),
                      child: Text(
                        "Nível ${level}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      )
                    ),
                  ],  
                )
              ],
             )
            ],
          ),
        ),
    );
  }

}

