import 'package:flutter/material.dart';
import 'package:solana/bidding_info.dart';

class biddings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>bidding_info()));},
      child:

      ListView(
        scrollDirection: Axis.vertical,
        children: const [
          Card(
            child: ListTile(leading: Text("Prize pool:"),
              title: Text("45 crores"),
              trailing: Text("Entry: 5"),),

          ),
          Card(
            child: ListTile(
              leading: Text("Prize pool:"),
              title: Text("65 crores"),
              trailing: Text("Entry: 10"),
            ),
          ),
          Card(child:ListTile(
            leading: Text("Prize pool:"),
            title: Text("15 Lakhs"),
            trailing: Text("Entry: 25"),
          ),),
          Card(
            child: ListTile(
              leading: Text("Prize pool:"),
              title: Text("75 Lakhs"),
              trailing: Text("Entry: 35"),
            ),
          ),
          Card(child:
          ListTile(
            leading: Text("Prize pool:"),
            title: Text("15 crores"),
            trailing: Text("Entry: 15"),
          ),),
          Card(
            child: ListTile(
              leading: Text("Prize pool:"),
              title: Text("25 crores"),
              trailing: Text("Entry: 55"),
            ),
          )

        ],
      )
      ,);
  }

}