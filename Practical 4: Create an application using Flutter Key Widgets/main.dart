import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Row widget example'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Text("Item 1"),
          Text("Item 2"),
          Text("Item 3"),
        ],
      ),
    ),
  ));
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Container Example'),
      ),
      body: Container(
        width: 200.0,
        height: 100.0,
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        color: const Color.fromARGB(255, 33, 243, 75),
        alignment: Alignment.center,
        child: Text(
          'Hello, Welcome in the Container!',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
    ),
  ));
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Win Yadanar Phyo"),
              accountEmail: Text("winyadanarphyo.120239@gmail.com"),
              currentAccountPicture: Image.network(
                "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=600",
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("My account"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("My email"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
