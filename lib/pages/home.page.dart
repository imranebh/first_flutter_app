import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/profile.jpg"),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/profile.jpg"),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Theme.of(context).primaryColor],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/home");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Counter"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Chat"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/chat");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: Text("Home Page", style: TextStyle(fontSize: 33))),
    );
  }
}
