import 'package:flutter/material.dart';
import 'package:solana/data.dart';
import 'package:solana/match tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Homestate();
  }
}

class _Homestate extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              bottom: const PreferredSize(preferredSize:Size.fromHeight(50),child: TabBar(tabs: [Tab(text: 'Cricket',),Tab(text: 'Football',),Tab(text: 'kabaddi',),Tab(text: 'Basketball',),Tab(text: 'Baseball',),Tab(text: 'Voleyball',)])),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Colors.black, Colors.red],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
              ),
            )),
        body: TabBarView(
          children:[ Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('T20 league'),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add))
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                child:
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: teams.length,
                    itemBuilder:(BuildContext context,int index)=> Match_tile(tournement: teams[index].tournement, team1: teams[index].team1, team2: teams[index].team2, start_time: teams[index].start_time, t1s: teams[index].t1s, t2s: teams[index].t2s,main: true,)),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Upcoming Matches"),
                  ],
                ),
              ),
              Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: teams.length,
                        itemBuilder:(BuildContext context,int index)=> Match_tile(tournement: teams[index].tournement, team1: teams[index].team1, team2: teams[index].team2, start_time: teams[index].start_time, t1s: teams[index].t1s, t2s: teams[index].t2s,main:false,)),
                  ))
            ],
          ),
          Container(decoration: BoxDecoration(color: Colors.green),),
            Container(decoration: BoxDecoration(color: Colors.grey),),
            Container(decoration: BoxDecoration(color: Colors.orange),),
            Container(decoration: BoxDecoration(color: Colors.blue),),
            Container(decoration: BoxDecoration(color: Colors.deepOrange),),
          ]
        ),
      ),
    );
  }
}
