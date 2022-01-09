import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resume_app/mordern.dart';
import 'package:resume_app/professional.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class nav_bar extends StatelessWidget {
  const nav_bar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Resume App",
      home:HomePage() ,
      
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: Text("Resume App"),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.settings)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.purple,Colors.purpleAccent,Colors.purple,Colors.purpleAccent,Colors.purple,Colors.purpleAccent,Colors.purple,Colors.purpleAccent,])
            ),
          ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
              UserAccountsDrawerHeader(
                accountName: Text("Your Account"), 
                accountEmail: Text("Login with Google or facebook"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.person,size: 60,color: Colors.white,),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.purple,Colors.purpleAccent,Colors.purple]), 
                ),
                ),
              ListTile(
                title: Text("Invite Friends"),
                leading: Icon(Icons.share),
              ),
              ListTile(
                title: Text("View Full Version"),
                leading: Icon(Icons.lock),
              ),
              Divider(height: 2, color: Colors.purple,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Tutorial"),
              ),
              ListTile(
                title: Text("Create resume Tour"),
                leading: Icon(Icons.touch_app),
              ),
              ListTile(
                title: Text("Featheres Video Tutorial"),
                leading: Image.network("data:image/png;base64,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",scale: 10,),
              ),
              Divider(height: 2, color: Colors.purple,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Settings"),
              ),
              ListTile(
                title: Text("App Settings"),
                leading: Icon(Icons.settings),
              ),
            ],),
          ),
          body:
          Column(
            children:[ 
              Expanded(
              flex: 3,
              child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      children: [
                      Card(
                        elevation: 10,
                        child: 
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                             child: Text("Create CV"),
                          ),
                              ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.network("https://cdn4.iconfinder.com/data/icons/project-management-vol-2/140/CV__edit__create__resume__document-512.png",scale: 10,),
                            ),
                          )
                            ],
                          ),
                        ),
                        
                      ),
                      // Link(uri: Uri.parse(""), builder: builder),
                      Card(
                        elevation: 10,
                        child: 
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                             child: Text("Edit CV"),
                          ),
                              ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.network("https://cdn4.iconfinder.com/data/icons/project-management-vol-2/140/CV__edit__create__resume__document-512.png",scale: 10,),
                            ),
                          )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: 
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                             child: Text("Saved CV"),
                          ),
                              ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.network("https://cdn4.iconfinder.com/data/icons/project-management-vol-2/140/CV__edit__create__resume__document-512.png",scale: 10,),
                            ),
                          )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
            ),
    
            Expanded(
              flex: 1,
              child:  
                TabBar(
                  
                  tabs: [
                  Tab(
                    text: "MORDERN",
                  ),
                  Tab(
                    text: "NEW",
                  ),
                  Tab(
                    text: "LATEST",
                  ),
                  Tab(
                    text: "PROFESSIONAL",
                  ),
                ],
                ),
            ),
          Expanded(
              flex: 5,
              child:TabBarView(children: [
              mordern(),
              profess(),
              mordern(),
              mordern(),
            ],),
            )
            ],
            ),
      ),
    );
  }
}