import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solana/biddings.dart';

class Match_tile extends StatefulWidget {
  const Match_tile(
      {super.key, required this.tournement, required this.team1, required this.team2, required this.start_time,required this.t1s,required this.t2s, required this.main});

  final tournement;
  final team1;
  final team2;
  final start_time;
  final t1s;
  final t2s;
  final bool main;


  @override
  State<StatefulWidget> createState() {
    return _Matchtilestate();
  }

}

class _Matchtilestate extends State<Match_tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>biddings()));},
      child: Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(children: [widget.main? SizedBox(height: 2,):Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.tournement),
            Icon(Icons.accessibility_rounded)
          ],
        ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/2/2f/Delhi_Capitals.svg/1200px-Delhi_Capitals.svg.png"),),
                      SizedBox(width: 5,),
                      Text(widget.t1s)
                    ],
                  ),
                  SizedBox(height: 5,),
                  widget.main?SizedBox(height: 2,):Text(widget.team1.substring(0,8))
                ],
              ),
              widget.main?Row(children: [SizedBox(width: 5,),Text('VS'),SizedBox(width: 5,)],):Column(

                children: [
                  Text('Time left'),
                  SizedBox(height: 5,),
                  Text(widget.start_time)
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(widget.t2s),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        backgroundImage:NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/a/a9/Lucknow_Super_Giants_IPL_Logo.svg/1200px-Lucknow_Super_Giants_IPL_Logo.svg.png"),
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 5,),
                  widget.main?SizedBox(height: 2,):Text(widget.team2.substring(0,11))
                ],
              )
            ],
          ),
          widget.main?Column(

            children: [
              Text('Time left'),
              SizedBox(height: 2,),
              Text(widget.start_time)
            ],
          ):SizedBox(height: 2,),
        ],),
      ),
    ),);
  }

}