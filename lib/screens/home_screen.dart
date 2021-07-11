import 'package:facebook_clone/models/newfeed_model.dart';
import 'package:facebook_clone/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'friend_screen.dart';
import 'home_body_screen.dart';
import 'notificatoin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  List<Widget> lstPages = [
    HomeBodyScreen(),
    FriendScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  foregroundImage: NetworkImage(
                      "https://envri.eu/wp-content/uploads/2016/08/software-developer-copy.jpg"),
                ),
                Text(
                  "Jack Ma",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("IOS Developer"),
              ],
            )),
            ListTile(
              leading: Icon(Icons.document_scanner_rounded),
              title: Text("New feed"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.document_scanner_rounded),
              title: Text("New feed"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.document_scanner_rounded),
              title: Text("New feed"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "New Feed",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(Icons.message),
          ),
        ],
      ),
      body: lstPages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "New feed"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          print(index);
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
