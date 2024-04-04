import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bidding_info extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _biddinginfostate();
  }

}

class _biddinginfostate extends State<bidding_info> with TickerProviderStateMixin {
    @override
  Widget build(BuildContext context) {
  TabController _tabController= TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text("DC VS CSK"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Current Prize Pool"),
                          Text("RS 33")
                        ],
                      ),
                      Column(
                        children: [
                          Text("Max Prize Pool"),
                          Text("RS 100")
                        ],
                      )
                    ],
                  ),
                  LinearProgressIndicator(
                    color: Colors.red,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("8 spots left"),
                    Text("12 spots"),
                  ],),
                  OutlinedButton(onPressed: (){}, child: Text("Join")),
        
        
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  child: TabBar(
                    controller: _tabController,
                      tabs: [
                        Tab(text: "Winnings",),
                        Tab(text: "Leaderboard",)
                      ]
                  ),
                ),
                Container(
                  width: 500,
                  height: 500,
                    child: TabBarView(
                        controller: _tabController,
                        children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rank"),
                              Text("Winings")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("All Teams "),
                          Flexible(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 1"),
        
                                  ),
        
                                ),
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 2"),
        
                                  ),
        
                                ),
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 3"),
        
                                  ),
        
                                ),
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 4"),
        
                                  ),
        
                                ),
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 5"),
        
                                  ),
        
                                ),
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 6"),
        
                                  ),
        
                                ),
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 7"),
        
                                  ),
        
                                ),
                                Card(
                                  child: ListTile(
                                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),),
                                    title: Text("USer 8"),
        
                                  ),
        
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
                )
              ],
            )
        
          ],
        ),
      ),
    );
  }

}