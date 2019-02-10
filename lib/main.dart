import 'package:flutter/material.dart';
import 'package:navigation_drawer/firstpage.dart';

void main()=> runApp(new NavigationDrawer());

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home:  MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
        elevation: 10,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
             accountEmail: new Text("rakibjoarder@gmail.com"),
              accountName: new Text("Rakib Mamun Joarder"),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://api.androidhive.info/images/nav-menu-header-bg.jpg"),)
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: new Text("R"),
              ),

            ),
            new ListTile(
              title: new Text("Home"),
              leading: Icon(Icons.home),
                onTap: ()=> Navigator.of(context).pop()
            ),
            new ListTile(
              title: new Text("First Page"),
              leading: Icon(Icons.pages),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new FirstPage(
                        "First Page")));

              }),
            new ListTile(
              title: new Text("Second Page"),
              leading: Icon(Icons.pageview),
                onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new FirstPage(
                      "Second Page")));

            }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Exit"),
              leading: Icon(Icons.print),
              onTap: ()=> Navigator.of(context).pop(),
            ),

          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Main Page"),
        ),
      ),
    );
  }
}

