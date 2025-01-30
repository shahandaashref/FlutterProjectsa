import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/Homepage.dart';
import 'package:my_flutter_app/pages/chat.dart';
import 'package:my_flutter_app/pages/tapBottomTwo.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  String selectedMood = "";
  final TextEditingController _searchController = TextEditingController();


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

        switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomTwo()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
        break;
        case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Chatscreen()));
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
    bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  backgroundColor: Colors.blue[800],  
  selectedItemColor: Colors.white, 
  
  unselectedItemColor: const Color.fromARGB(255, 171, 171, 171), 
  type: BottomNavigationBarType.fixed, 
  onTap: _onItemTapped,
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.apps_rounded), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
  ],
),

      body: SafeArea(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Hi, Jared",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.settings),
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(Icons.person, size: 50),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Shahanda",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text("Active now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text("Friends",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text("265",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Followers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text("302",
                          style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                          ),
                          ],
                          ),
                          ],
                          ),
                          ],

              ),
              ),],
              ),
              ),
              );
  }
}


