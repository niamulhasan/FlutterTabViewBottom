import 'package:flutter/material.dart';


// Importing Splited Files
import './FirstPage.dart' as firstPage;
import './SceondPage.dart' as sceondPage;
import './ThirdPage.dart' as thirdPage;



void main() {
  runApp( new MaterialApp(
    home: new Tabs()
  ));
}


class Tabs extends StatefulWidget{
  @override
  TabsState createState() => new TabsState();
}


class TabsState extends State<Tabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: new AppBar(
      //   title: new Text("Tabs"),
      //   backgroundColor: Colors.blue,
      //   bottom: new TabBar(
      //     controller: controller,
      //     tabs: <Tab>[
      //       new Tab(icon: new Icon(Icons.beach_access)),
      //       new Tab(icon: new Icon(Icons.local_activity)),
      //       new Tab(icon: new Icon(Icons.account_balance_wallet)),       
      //     ],
      //   ),
      // ),
      bottomNavigationBar: new Material(
        color: Colors.deepPurple,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.beach_access)),
            new Tab(icon: new Icon(Icons.local_activity)),
            new Tab(icon: new Icon(Icons.account_balance_wallet)),        
          ]
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new firstPage.First(),
          new sceondPage.Second(),
          new thirdPage.Third()
        ],
      ),
    );
  }
}